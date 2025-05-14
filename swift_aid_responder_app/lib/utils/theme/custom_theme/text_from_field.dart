import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constant/colors.dart';
import 'package:swift_aid_responder_app/utils/constant/sizes.dart';

class STextFromField {
  STextFromField._();

  static InputDecorationTheme lightTheme = InputDecorationTheme(
    // consider moving to constants
    errorMaxLines: 3,
    // texts
    labelStyle: TextStyle().copyWith(color: SAppColors.darkText,fontSize: SSizes.fontMd),
    floatingLabelStyle: TextStyle().copyWith(color: SAppColors.darkText, fontSize: SSizes.fontMd),
    hintStyle: TextStyle().copyWith(color: SAppColors.darkGrey,fontSize: SSizes.fontSm),

    // borders
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(color: SAppColors.borderSecondary)
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(color: SAppColors.borderPrimary)
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(color: SAppColors.warning)
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(color: SAppColors.error)
    ),
    suffixIconColor: SAppColors.lightGrey,
    prefixIconColor: SAppColors.lightGrey

  );
  static InputDecorationTheme darkTheme = InputDecorationTheme(
    // consider moving to constants
    errorMaxLines: 3,
    // texts
    labelStyle: TextStyle().copyWith(color: SAppColors.lightText,fontSize: SSizes.fontMd),
    floatingLabelStyle: TextStyle().copyWith(color: SAppColors.lightText, fontSize: SSizes.fontMd),
    hintStyle: TextStyle().copyWith(color: SAppColors.lightText,fontSize: SSizes.fontSm),

    // borders
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(color: SAppColors.borderSecondary)
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(color: SAppColors.borderPrimary)
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(color: SAppColors.warning)
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(color: SAppColors.error)
    ),
    suffixIconColor: SAppColors.lightGrey,
    prefixIconColor: SAppColors.lightGrey

  );
}
