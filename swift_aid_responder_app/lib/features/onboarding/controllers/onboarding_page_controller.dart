import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:swift_aid_responder_app/features/authentication/views/login/login_screen.dart';

class OnboardingPageController {
  // get single instance of class
  static OnboardingPageController get instance => Get.find();

  // variables
  final pageController = PageController(); // for pageView
  final currentPage = 0.obs;

  // update current Page
  void updateCurrentPage(int index) {
    currentPage.value = index;
  }

  // next page
  void nextPage() {
    if (currentPage.value == 2) {
      //write to storage that not first time
      final storage = GetStorage();
      storage.write("isFirstTime", false);
      // got to login screen
      Get.offAll(()=>LoginScreen());
    } else {
      int page = currentPage.value + 1;
      currentPage.value = page;
      pageController.jumpToPage(page);
    }
  }

  // dotNavigation
  void dotNavigation(int index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
  }

  // skip button
  void skip() {
    if (currentPage.value == 2) {
      // go to login screen
    } else {
      currentPage.value = 2;
      pageController.jumpToPage(currentPage.value);
    }
  }
}
