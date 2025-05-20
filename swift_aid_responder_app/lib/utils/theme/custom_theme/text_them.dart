import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class STextTheme {
  STextTheme._();

  static TextTheme lightTheme = TextTheme(
    // ----HEADLINES ---- //
    headlineLarge: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontXL,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontLg,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontLg,
      fontWeight: FontWeight.w500,
    ),

    // --- Body --- //
    bodyLarge: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontMd,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontMd,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontSm,
      fontWeight: FontWeight.normal,
    ),

    // -- Title --- //
    titleLarge: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontLg,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontLg,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontLg,
      fontWeight: FontWeight.normal,
    ),

    // --- Input labels --- //
    labelLarge: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontMd,
    ),
    labelMedium: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontMd,
    ),
    labelSmall: TextStyle().copyWith(
      color: SAppColors.darkText,
      fontSize: SSizes.fontSm,
    ),
  );

  static TextTheme darkTheme = TextTheme(
    // ----HEADLINES ---- //
    headlineLarge: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontXL,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontLg,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontLg,
      fontWeight: FontWeight.w500,
    ),

    // --- Body --- //
    bodyLarge: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontMd,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontMd,
      fontWeight: FontWeight.w300,
    ),
    bodySmall: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontSm,
      fontWeight: FontWeight.normal,
    ),

    // -- Title --- //
    titleLarge: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontLg,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontLg,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontLg,
      fontWeight: FontWeight.normal,
    ),

    // --- Input labels --- //
    labelLarge: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontMd,
    ),
    labelMedium: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontMd,
    ),
    labelSmall: TextStyle().copyWith(
      color: SAppColors.lightText,
      fontSize: SSizes.fontSm,
    ),
  );
}
