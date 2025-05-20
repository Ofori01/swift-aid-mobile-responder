import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';

class SCheckboxTheme {
  SCheckboxTheme._();

  static CheckboxThemeData lightTheme = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return SAppColors.light;
      } else {
        return SAppColors.dark;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return SAppColors.primaryColor;
      } else {
        return Colors.transparent;
      }
    }),
  );


  static CheckboxThemeData darkTheme = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return SAppColors.light;
      } else {
        return SAppColors.dark;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return SAppColors.primaryColor;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
