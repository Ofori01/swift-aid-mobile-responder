import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_aid_responder_app/features/onboarding/views/onboarding_screen.dart';
import 'package:swift_aid_responder_app/utils/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: OnboardingScreen(),
      
    );
  }
}
