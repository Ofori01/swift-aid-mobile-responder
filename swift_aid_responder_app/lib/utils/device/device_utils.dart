import 'dart:io';
import 'package:flutter/services.dart';

class SDeviceUtils {
  SDeviceUtils._();

  // platform check
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static bool isIos() {
    return Platform.isIOS;
  }

  // Status Bar
  static void setStatusbarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  // vibrate
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  // internet check
  static Future<bool> hasInternetConnection() async {
    try {
      final response = await InternetAddress.lookup('example.com');
      return response.isNotEmpty && response[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
