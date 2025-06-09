import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class SIconButtonTheme {
  SIconButtonTheme._();

  static IconButtonThemeData lightTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: SAppColors.backgroundLight,
      foregroundColor: SAppColors.backgroundDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      ),
    ),
  );
  static IconButtonThemeData darkTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: SAppColors.backgroundLight,
      foregroundColor: SAppColors.backgroundDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius),
      ),
    ),
  );
}
