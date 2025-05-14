import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class SChipTheme {
  SChipTheme._();

  static final lightTheme = ChipThemeData(
    backgroundColor: SAppColors.primaryAccent,
    brightness: Brightness.light,
    elevation: SSizes.buttonELevation,

  );
}
