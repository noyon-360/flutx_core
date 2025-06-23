import 'package:flutter/material.dart';
import '../text/app_text_style.dart';

/// Extension on TextTheme to integrate AppTextStyles with Flutter's theme system
extension AppTextThemeExtension on TextTheme {
  /// Create a TextTheme using AppTextStyles
  static TextTheme createAppTextTheme({
    Color? primaryColor,
    Color? secondaryColor,
    String? fontFamily,
  }) {
    return TextTheme(
      displayLarge: AppTextStyles.displayLarge(color: primaryColor, fontFamily: fontFamily),
      displayMedium: AppTextStyles.displayMedium(color: primaryColor, fontFamily: fontFamily),
      displaySmall: AppTextStyles.displaySmall(color: primaryColor, fontFamily: fontFamily),
      headlineLarge: AppTextStyles.headlineLarge(color: primaryColor, fontFamily: fontFamily),
      headlineMedium: AppTextStyles.headlineMedium(color: primaryColor, fontFamily: fontFamily),
      headlineSmall: AppTextStyles.headlineSmall(color: primaryColor, fontFamily: fontFamily),
      titleLarge: AppTextStyles.titleLarge(color: primaryColor, fontFamily: fontFamily),
      titleMedium: AppTextStyles.titleMedium(color: primaryColor, fontFamily: fontFamily),
      titleSmall: AppTextStyles.titleSmall(color: primaryColor, fontFamily: fontFamily),
      bodyLarge: AppTextStyles.bodyLarge(color: primaryColor, fontFamily: fontFamily),
      bodyMedium: AppTextStyles.bodyMedium(color: primaryColor, fontFamily: fontFamily),
      bodySmall: AppTextStyles.bodySmall(color: secondaryColor, fontFamily: fontFamily),
      labelLarge: AppTextStyles.labelLarge(color: primaryColor, fontFamily: fontFamily),
      labelMedium: AppTextStyles.labelMedium(color: primaryColor, fontFamily: fontFamily),
      labelSmall: AppTextStyles.labelSmall(color: secondaryColor, fontFamily: fontFamily),
    );
  }
}