import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:swift_aid_responder_app/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:swift_aid_responder_app/utils/theme/custom_theme/elevatedbutton_theme.dart';
import 'package:swift_aid_responder_app/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:swift_aid_responder_app/utils/theme/custom_theme/text_from_field.dart';
import 'package:swift_aid_responder_app/utils/theme/custom_theme/text_them.dart';

class SAppTheme {
  SAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: SAppColors.primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: SAppColors.backgroundLight,
    textTheme: STextTheme.lightTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.lightTheme,
    bottomSheetTheme: SBottomSheetTheme.lightTheme,
    inputDecorationTheme: STextFromField.lightTheme,
    checkboxTheme: SCheckboxTheme.lightTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: SAppColors.primaryColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: SAppColors.backgroundDark,
    textTheme: STextTheme.darkTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.darkTheme,
    bottomSheetTheme: SBottomSheetTheme.darkTheme,
    inputDecorationTheme: STextFromField.darkTheme,
    checkboxTheme: SCheckboxTheme.darkTheme,
  );
}
