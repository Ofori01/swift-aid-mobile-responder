import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constant/colors.dart';
import 'package:swift_aid_responder_app/utils/constant/sizes.dart';

class SElevatedButtonTheme {
  SElevatedButtonTheme._();

  static ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.all(SSizes.buttonPadding),

      foregroundColor: SAppColors.buttonForegroundLight,
      backgroundColor: SAppColors.buttonPrimary,
      disabledBackgroundColor: SAppColors.lightGrey,
      disabledForegroundColor: SAppColors.buttonForegroundLight,
      elevation: SSizes.buttonELevation,
      side: BorderSide(color: SAppColors.buttonPrimary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius)),
      textStyle: TextStyle(fontSize: SSizes.fontMd, fontWeight: FontWeight.w600, color: SAppColors.lightText),
      

    )
  );
  static ElevatedButtonThemeData darkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.all(SSizes.buttonPadding),

      foregroundColor: SAppColors.buttonForegroundLight,
      backgroundColor: SAppColors.buttonPrimary,
      disabledBackgroundColor: SAppColors.lightGrey,
      disabledForegroundColor: SAppColors.buttonForegroundLight,
      elevation: SSizes.buttonELevation,
      side: BorderSide(color: SAppColors.buttonPrimary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius)),
      textStyle: TextStyle(fontSize: SSizes.fontMd, fontWeight: FontWeight.w600, color: SAppColors.lightText),
      

    )
  );
 
}
