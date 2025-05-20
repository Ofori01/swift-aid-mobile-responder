import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class STextFromField {
  STextFromField._();

  static InputDecorationTheme lightTheme = InputDecorationTheme(
    // consider moving to constants
    errorMaxLines: 3,
    // texts
    labelStyle: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontMd,
    ),
    floatingLabelStyle: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontMd,
    ),
    hintStyle: TextStyle().copyWith(
      color: SAppColors.darkGrey,
      fontSize: SSizes.fontSm,
    ),

    // borders
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(width: 1, color: SAppColors.borderPrimary),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(
        width: 1,
        // ignore: deprecated_member_use
        color: SAppColors.borderPrimary.withOpacity(0.5),
      ),
    ),

    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(width: 1, color: SAppColors.warning),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(width: 1, color: SAppColors.error),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(width: 1, color: SAppColors.borderPrimary),
    ),
    suffixIconColor: SAppColors.grey,
    prefixIconColor: SAppColors.grey,
  );

  static InputDecorationTheme darkTheme = InputDecorationTheme(
    // consider moving to constants
    errorMaxLines: 3,
    // texts
    labelStyle: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontMd,
    ),
    floatingLabelStyle: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontMd,
    ),
    hintStyle: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontSm,
    ),

    // borders
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(width: 1, color: SAppColors.borderPrimary),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(width: 1, color: SAppColors.light),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(width: 1, color: SAppColors.warning),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(width: 1, color: SAppColors.error),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      borderSide: BorderSide(width: 1, color: SAppColors.borderPrimary),
    ),
    suffixIconColor: SAppColors.grey,
    prefixIconColor: SAppColors.grey,
  );
}
