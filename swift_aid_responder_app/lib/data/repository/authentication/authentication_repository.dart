import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:swift_aid_responder_app/features/authentication/views/login/login_screen.dart';
import 'package:swift_aid_responder_app/features/home/views/home_screen.dart';
import 'package:swift_aid_responder_app/features/onboarding/views/onboarding_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables
  final storage = GetStorage();

  @override
  void onReady() {
    //when instance is created first time
    //remove splash screen
    FlutterNativeSplash.remove();

    //redirect user to loginScreen
    redirect();
  }

  void redirect() async {
    //check if first time from local storage
    await storage.writeIfNull("isFirstTime", true);

    //check for token
    final token = storage.read("token");

    storage.read("isFirstTime") != true
        ? (token != null
            ? Get.offAll(() => HomeScreen())
            : Get.offAll(() => LoginScreen()))
        : Get.offAll(() => OnboardingScreen());
  }

  //sign in logic

  //delete account logic
}
