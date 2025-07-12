import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_aid_responder_app/utils/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: CircularProgressIndicator(),
    );
  }
}
