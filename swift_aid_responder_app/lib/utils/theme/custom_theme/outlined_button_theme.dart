import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class SOutlinedButtonTheme {
  SOutlinedButtonTheme._();

  static final lightTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: SAppColors.backgroundDark,
      side: BorderSide(color: SAppColors.buttonPrimary),
      padding: EdgeInsets.symmetric(vertical: SSizes.buttonPadding),
      elevation: 0,
      textStyle: TextStyle(color: SAppColors.darkText, fontSize: SSizes.fontMd, fontWeight: FontWeight.w600)
    )
  );
  static final darkTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: SAppColors.buttonForegroundLight,
      side: BorderSide(color: SAppColors.buttonPrimary),
      padding: EdgeInsets.symmetric(vertical: SSizes.buttonPadding),
      elevation: 0,
      textStyle: TextStyle(color: SAppColors.darkText, fontSize: SSizes.fontMd, fontWeight: FontWeight.w600)
    )
  );
}
