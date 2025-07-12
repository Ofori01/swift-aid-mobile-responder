import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:swift_aid_responder_app/common/widgets/snackbar/s_snackbar.dart';
import 'package:swift_aid_responder_app/features/home/models/user_model.dart';
import 'package:swift_aid_responder_app/features/home/services/home_service.dart';

class HomeController extends GetxController {
  // store user details in local storage
  //load on open. if empty then make request for user data
  // -- store that data in local storage
  //everything about user get from local storage unless a change occurs then rewrite data

  HomeController get instance => Get.find();

  //variables
  final _storage = GetStorage();
  final Rx<UserProfile?> user = UserProfile().obs;
  final statusLoading = false.obs;

  //methods

  Future<void> loadUserData() async {
    final localUserMap = _storage.read('user');
    if (localUserMap != null) {
      user.value = UserProfile.fromJson(localUserMap);
    } else {
      //load from server
      final userProfile = await HomeService.getUserProfile();
      if (userProfile != null) {
        user.value = userProfile;
        await _storage.write("user", userProfile.toJson());
      } else {
        SSnackbar.warningSnackbar(
          "Network Error",
          "We failed to load your data.Check your connection and reload the application",
        );
      }
    }
  }

  Future<void> updateResponderStatus(String status) async {
    try {
      statusLoading.value = true;
      final response = await HomeService.changeResponderStatus(status);
      user.value?.status = response.responder!.status;
      await _storage.write('user', user.value!.toJson());
      statusLoading.value = false;
    } catch (e) {
      statusLoading.value = false;
      SSnackbar.errorSnackbar(
        "Status Update Failed",
        e.toString().replaceFirst("Exception: ", ""),
      );
    }
  }
}
