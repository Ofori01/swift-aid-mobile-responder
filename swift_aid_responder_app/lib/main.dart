import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:swift_aid_responder_app/app.dart';
import 'package:swift_aid_responder_app/data/repository/authentication/authentication_repository.dart';
import 'package:swift_aid_responder_app/features/home/controllers/home_controller.dart';

Future<void> main() async {
  // widget binding
  final WidgetsBinding wBinding = WidgetsFlutterBinding.ensureInitialized();
  // Todo init local storage
  await GetStorage.init();

  // await splash screen
  FlutterNativeSplash.preserve(widgetsBinding: wBinding);

  // Todo init authentication
  Get.put(AuthenticationRepository());

  // Todo add controllers
  Get.put(HomeController());

  // Todo init socket io

  runApp(const App());
}
