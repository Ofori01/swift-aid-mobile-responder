import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class SBottomSheetTheme {
  SBottomSheetTheme._();

  static final lightTheme = BottomSheetThemeData(
    backgroundColor: SAppColors.lightGrey,
    showDragHandle: false,
    modalBackgroundColor: SAppColors.lightGrey,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius)),
    constraints: BoxConstraints(maxWidth:double.infinity),
    elevation: SSizes.buttonELevation

  );
  static final darkTheme = BottomSheetThemeData(
    backgroundColor: SAppColors.backgroundDark,
    showDragHandle: false,
    modalBackgroundColor: SAppColors.backgroundDark,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SSizes.buttonBorderRadius)),
    constraints: BoxConstraints(maxWidth:double.infinity),
    elevation: SSizes.buttonELevation

  );
}
