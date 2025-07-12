import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_aid_responder_app/common/widgets/snackbar/s_snackbar.dart';
import 'package:swift_aid_responder_app/features/authentication/services/auth_service.dart';
import 'package:swift_aid_responder_app/features/home/views/home_screen.dart';
import 'package:swift_aid_responder_app/utils/storage/local_storage.dart';

class LoginController extends GetxController {
  LoginController get instance => Get.find();

  //variables
  RxBool isLoading = false.obs;
  TextEditingController badgeNumber = TextEditingController();
  TextEditingController password = TextEditingController();

  //methods
  Future<void> onSignIn() async {
    if (badgeNumber.text.isEmpty || password.text.isEmpty) {
      SSnackbar.warningSnackbar(
        "Error",
        "Please enter both badge number and password",
      );
      return;
    }
    isLoading.value = true;
    final response = await AuthService.signIn(badgeNumber.text, password.text);
    isLoading.value = false;
    if (response != null && response.token != null) {
      // Save login response to local storage
      await SLocalStorage().save('token', response.token);
      SSnackbar.successSnackbar("Success", "Login Successful");

      Get.offAll(() => const HomeScreen());
      Get.offAll(() => const HomeScreen());
    } else {
      SSnackbar.errorSnackbar(
        "Login Failed",
        "Invalid badge number or password.",
      );
    }
  }
}
