import 'package:flutter/material.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 05 Dec, 2025 (Updated: Modern M3 Theme)
*/

/// ------------------------------
/// BRAND COLORS
/// ------------------------------
class AppColors {
  // Primary brand (Deep Forest Green)
  static const Color primary = Color(0xFF2F4F46);
  static const Color onPrimary = Colors.white;

  static const Color primaryContainer = Color(0xFF99B5AC);
  static const Color onPrimaryContainer = Color(0xFF0B0F0E);

  // Secondary (soft neutral greys)
  static const Color secondary = Color(0xFFECEEEE);
  static const Color onSecondary = Color(0xFF2F2F2F);

  static const Color secondaryContainer = Color(0xFFF7F8F8);
  static const Color onSecondaryContainer = Color(0xFF2F2F2F);

  // Tertiary (icon + category chips)
  static const Color tertiary = Color(0xFF5D6B67);
  static const Color onTertiary = Colors.white;

  // Error colors
  static const Color error = Color(0xFFFF5050);
  static const Color onError = Colors.white;
  static const Color errorContainer = Color(0xFFFFE5E5);
  static const Color onErrorContainer = Color(0xFFFF5050);

  /// ------------------------------
  /// NEUTRALS
  /// ------------------------------

  static const Color neutral100 = Color(0xFFFBFBFB);
  static const Color neutral200 = Color(0xFFF1F2F2);
  static const Color neutral300 = Color(0xFFE5E6E6);
  static const Color neutral600 = Color(0xFF6D6F70);
  static const Color neutral900 = Color(0xFF1E1F20);

  /// ------------------------------
  /// LIGHT THEME SURFACES
  /// ------------------------------

  static const Color surface = neutral100;
  static const Color surfaceContainerLow = neutral200;
  static const Color surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color surfaceContainerHigh = neutral300;

  /// ------------------------------
  /// DARK THEME SURFACES
  /// ------------------------------

  static const Color surfaceDark = Color(0xFF0D1211);
  static const Color surfaceContainerDark = Color(0xFF171D1C);
  static const Color surfaceContainerDarkLow = Color(0xFF1E2423);
  static const Color surfaceContainerDarkHigh = Color(0xFF2A2E2D);

  static const Color onSurfaceDark = Color(0xFFE7E8E7);

  /// ------------------------------
  /// OTHER COLORS
  /// ------------------------------
  static const Color warning = Color(0xFFFFCC00);
  static const Color success = Color(0xFF30B0C7);
}
