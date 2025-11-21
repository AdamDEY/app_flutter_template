// lib/core/constants/app_colors.dart

import 'package:flutter/material.dart';

class AppColors {
  // Brand Color
  static const Color primary = Color(0xFF2979FF); // Your main brand color

  // Light Theme Colors
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color backgroundSecondaryLight = Color(
    0x172979FF,
  ); // 17 is the alpha value
  static const Color textLight = Color(0x8A000000); // 54 in hex is 8A
  static const Color strokeLight = Color(0xFFE6E6E6);
  static const Color skeletonBackgroundLight = Color(0xFFF2F3F8);

  // Dark Theme Colors
  static const Color backgroundDark = Color(0xFF333333);
  static const Color backgroundSecondaryDark = Color(0xFF333333);
  static const Color textDark = Color(0xFFF0F0F0);
  static const Color strokeDark = Color(0xFF595959);
  static const Color skeletonBackgroundDark = Color(0xFF494949);

  // Other UI Colors
  static const Color disabled = Color(0xFFC4C4C4);
  static const Color statusDot = Color(0xFF008000); // Green

  // Feedback Colors
  static const Color error = Color(0xFFD32F2F); // A standard red for errors
  static const Color success = Color(
    0xFF4CAF50,
  ); // A standard green for success
}
