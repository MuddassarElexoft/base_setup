import 'package:flutter/material.dart';
import 'package:base_setup/core/constants/constants.dart';

import 'colors.dart';

ThemeMode themeMode = ThemeMode.system;

/// ----------------------------------------------------------
/// LIGHT THEME
/// ----------------------------------------------------------
final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,

  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    primaryContainer: AppColors.primaryContainer,
    onPrimaryContainer: AppColors.onPrimaryContainer,

    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
    secondaryContainer: AppColors.secondaryContainer,
    onSecondaryContainer: AppColors.onSecondaryContainer,

    tertiary: AppColors.tertiary,
    onTertiary: AppColors.onTertiary,

    error: AppColors.error,
    onError: AppColors.onError,
    errorContainer: AppColors.errorContainer,
    onErrorContainer: AppColors.onErrorContainer,

    surface: AppColors.surface,
    onSurface: AppColors.neutral900,

    surfaceContainerLowest: AppColors.surfaceContainerLowest,
    surfaceContainerLow: AppColors.surfaceContainerLow,
    surfaceContainerHigh: AppColors.surfaceContainerHigh,

    outline: AppColors.neutral300,
    outlineVariant: AppColors.neutral200,
  ),

  scaffoldBackgroundColor: AppColors.surface,

  textTheme: const TextTheme(
    headlineLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
    headlineMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
    headlineSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16),
    bodySmall: TextStyle(fontSize: 14),

    labelLarge: TextStyle(fontSize: 14),
    labelMedium: TextStyle(fontSize: 12),
    labelSmall: TextStyle(fontSize: 10),
  ),
);

/// ----------------------------------------------------------
/// DARK THEME
/// ----------------------------------------------------------
final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,

  fontFamily: kFontFamily,

  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primaryContainer,
    onPrimary: AppColors.onPrimaryContainer,
    primaryContainer: AppColors.primary,
    onPrimaryContainer: AppColors.onPrimary,

    secondary: AppColors.surfaceContainerDarkLow,
    onSecondary: AppColors.onSurfaceDark,

    secondaryContainer: AppColors.surfaceContainerDark,
    onSecondaryContainer: AppColors.onSurfaceDark,

    tertiary: AppColors.surfaceContainerDarkHigh,
    onTertiary: AppColors.onSurfaceDark,

    error: AppColors.error,
    onError: AppColors.onError,
    errorContainer: AppColors.errorContainer,
    onErrorContainer: AppColors.onErrorContainer,

    surface: AppColors.surfaceDark,
    onSurface: AppColors.onSurfaceDark,

    surfaceContainerLowest: AppColors.surfaceDark,
    surfaceContainerLow: AppColors.surfaceContainerDarkLow,
    surfaceContainerHigh: AppColors.surfaceContainerDarkHigh,

    outline: AppColors.surfaceContainerDark,
    outlineVariant: AppColors.surfaceContainerDarkLow,
  ),

  scaffoldBackgroundColor: AppColors.surfaceDark,

  textTheme: const TextTheme(
    headlineLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
    headlineMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
    headlineSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16),
    bodySmall: TextStyle(fontSize: 14),

    labelLarge: TextStyle(fontSize: 14),
    labelMedium: TextStyle(fontSize: 12),
    labelSmall: TextStyle(fontSize: 10),
  ),
);
