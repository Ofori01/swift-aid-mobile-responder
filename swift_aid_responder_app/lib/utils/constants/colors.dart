import 'package:flutter/material.dart';

class SAppColors {
  SAppColors._();

  // ---THEME COLORS----  //
  static Color primaryColor = Color(0xFFF01A2E);
  static Color primaryAccent = Color(0xFFFF7F7F);

  // ---BACKGROUND COLORS----  //
  static Color backgroundLight = Colors.white;
  static Color backgroundDark = Colors.black;

  // ---TEXT COLORS----  //
  static Color lightText = lightGrey;
  static Color darkText = Colors.black;

  // --- Buttons --- //
  static Color buttonPrimary = primaryColor;
  static Color buttonForegroundLight = Colors.white;
  static Color buttonForegroundDark = darkText;

  // --- Borders -- //
  static Color borderPrimary = darkGrey;
  static Color borderSecondary = lightGrey;

  // Inputs
  static Color error = primaryColor;
  static Color warning = Color(0xFFFF8A05);
  static Color success = Color(0xFF00FF80);

  // -- Natural shades -- //
  static Color lightGrey = Color(0xFFD3D3D3);
  static Color darkGrey = Color(0xFF474747);
}
