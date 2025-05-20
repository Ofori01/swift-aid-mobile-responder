import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class SSpacingStyles {
  SSpacingStyles._();
  static EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: SSizes.appBarHeight,
    left: SSizes.defaultSpace,
    right: SSizes.defaultSpace,
    bottom: SSizes.defaultSpace,
  );
}
