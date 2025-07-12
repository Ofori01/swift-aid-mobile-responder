import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class SSnackbar {
  SSnackbar._();

  //success snackbar
  static void successSnackbar(String title, String message) {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: SSizes.fontMd),
      ),
      messageText: Text(
        message,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: SSizes.fontSm,
        ),
      ),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: SAppColors.success,
      colorText: SAppColors.light,
    );
  }

  //error snackbar
  static void errorSnackbar(String title, String message) {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: SSizes.fontMd),
      ),
      messageText: Text(
        message,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: SSizes.fontSm,
        ),
      ),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: SAppColors.error,
      colorText: SAppColors.light,
    );
  }

  //warning snackbar
  static void warningSnackbar(String title, String message) {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: SSizes.fontMd),
      ),
      messageText: Text(
        message,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: SSizes.fontSm,
        ),
      ),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: SAppColors.warning,
      colorText: SAppColors.light,
    );
  }

  //message snackbar
  static void messageSnackbar(String title, String message) {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: SSizes.fontMd),
      ),
      messageText: Text(
        message,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: SSizes.fontMd,
        ),
      ),
      snackPosition: SnackPosition.TOP,
      backgroundColor: SAppColors.primaryAccent,
      colorText: SAppColors.light,
      overlayBlur: 10,
      barBlur: 5,
    );
  }
}
