import 'package:flutter/material.dart';
import 'app_text_style.dart';

/// Responsive text styles that adapt to screen size
class ResponsiveTextStyles {
  ResponsiveTextStyles._();

  /// Get responsive text style based on screen width
  static TextStyle getResponsiveStyle({
    required BuildContext context,
    required TextStyle mobileStyle,
    required TextStyle tabletStyle,
    required TextStyle desktopStyle,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return mobileStyle;
    } else if (screenWidth < 1200) {
      return tabletStyle;
    } else {
      return desktopStyle;
    }
  }

  /// Responsive headline
  static TextStyle responsiveHeadline(BuildContext context, {Color? color}) {
    return getResponsiveStyle(
      context: context,
      mobileStyle: AppTextStyles.headlineSmall(color: color),
      tabletStyle: AppTextStyles.headlineMedium(color: color),
      desktopStyle: AppTextStyles.headlineLarge(color: color),
    );
  }

  /// Responsive title
  static TextStyle responsiveTitle(BuildContext context, {Color? color}) {
    return getResponsiveStyle(
      context: context,
      mobileStyle: AppTextStyles.titleSmall(color: color),
      tabletStyle: AppTextStyles.titleMedium(color: color),
      desktopStyle: AppTextStyles.titleLarge(color: color),
    );
  }

  /// Responsive body text
  static TextStyle responsiveBody(BuildContext context, {Color? color}) {
    return getResponsiveStyle(
      context: context,
      mobileStyle: AppTextStyles.bodySmall(color: color),
      tabletStyle: AppTextStyles.bodyMedium(color: color),
      desktopStyle: AppTextStyles.bodyLarge(color: color),
    );
  }
}
