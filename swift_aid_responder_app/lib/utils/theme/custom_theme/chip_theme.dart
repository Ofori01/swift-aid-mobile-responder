import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constant/colors.dart';
import 'package:swift_aid_responder_app/utils/constant/sizes.dart';

class SChipTheme {
  SChipTheme._();

  static final lightTheme = ChipThemeData(
    backgroundColor: SAppColors.primaryAccent,
    brightness: Brightness.light,
    elevation: SSizes.buttonELevation,
    
  );
}
