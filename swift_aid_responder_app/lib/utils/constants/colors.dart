import 'package:flutter/material.dart';

class SAppColors {
  SAppColors._();

  // ---THEME COLORS----  //
  static Color primaryColor = Color(0xFFF01A2E);
  static Color primaryAccent = Color(0xFFFF7F7F);
  static Color light = Colors.white;
  static Color dark = Colors.black;

  // ---BACKGROUND COLORS----  //
  static Color backgroundLight = Colors.white;
  static Color backgroundDark = Colors.black;

  // ---TEXT COLORS----  //
  static Color lightText = light;
  static Color darkText = dark;

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
  static Color lightGrey = Color.fromARGB(255, 244, 244, 244);
  static Color darkGrey = Color(0xFF474747);
  static Color grey = Colors.grey;
}
