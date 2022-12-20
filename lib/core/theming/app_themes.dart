import 'package:flutter/material.dart';

import 'app_colors.dart';

/// A utility class that holds themes for the app. It controls
/// how the app looks on different platforms like android, ios etc.
///
/// This class has no constructor and all methods are `static`.
class AppThemes {
  const AppThemes._();

  /// The main starting theme for the app.
  ///
  /// Sets the following defaults:
  /// * primaryColor: [AppColors.primaryColor],
  ///
  /// * fontFamily: [AppTypography.primary].fontFamily,
  ///
  /// * textTheme: [AppTypography.primary].textTheme
  ///
  /// * iconTheme: [Colors.white] for default icon
  ///
  /// * textButtonTheme: [TextButtonTheme] without the default padding,
  static final mainTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primaryColor,
      onPrimary: AppColors.highNeutralColor,
      secondary: AppColors.secondaryColor,
      onSecondary: AppColors.lowNeutralColor,
      tertiary: Colors.purpleAccent,
      onTertiary: Colors.yellowAccent,
      background: AppColors.backgroundColor,
      onBackground: AppColors.lowNeutralColor,
      surface: AppColors.surfaceColor,
      onSurface: AppColors.lowNeutralColor,
      error: AppColors.negativeColor,
      onError: AppColors.highNeutralColor,
    ),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    // fontFamily: AppTypography.primary.fontFamily,
    // textTheme: AppTypography.primary.textTheme,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.lightBackgroundColor,
      // titleTextStyle: AppTypography.primary.heading22,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    iconTheme: const IconThemeData(color: AppColors.lowNeutralMediumColor),
  );
}
