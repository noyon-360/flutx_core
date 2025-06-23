import 'package:flutter/material.dart';

import 'app_sizes.dart';


/// Device type enumeration
enum DeviceType { mobile, tablet, desktop }

/// Screen size category
enum ScreenSize {
  small, // < 600px
  medium, // 600px - 1024px
  large, // > 1024px
}

/// Responsive helper class for device detection and responsive utilities
class ResponsiveHelper {
  ResponsiveHelper._();

  /// Get current device type based on screen width
  static DeviceType getDeviceType(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= AppSizes.desktopBreakpoint) {
      return DeviceType.desktop;
    } else if (screenWidth >= AppSizes.mobileBreakpoint) {
      return DeviceType.tablet;
    } else {
      return DeviceType.mobile;
    }
  }

  /// Get current screen size category
  static ScreenSize getScreenSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= AppSizes.desktopBreakpoint) {
      return ScreenSize.large;
    } else if (screenWidth >= AppSizes.mobileBreakpoint) {
      return ScreenSize.medium;
    } else {
      return ScreenSize.small;
    }
  }

  /// Check if current device is mobile
  static bool isMobile(BuildContext context) {
    return getDeviceType(context) == DeviceType.mobile;
  }

  /// Check if current device is tablet
  static bool isTablet(BuildContext context) {
    return getDeviceType(context) == DeviceType.tablet;
  }

  /// Check if current device is desktop
  static bool isDesktop(BuildContext context) {
    return getDeviceType(context) == DeviceType.desktop;
  }

  /// Check if screen is small
  static bool isSmallScreen(BuildContext context) {
    return getScreenSize(context) == ScreenSize.small;
  }

  /// Check if screen is medium
  static bool isMediumScreen(BuildContext context) {
    return getScreenSize(context) == ScreenSize.medium;
  }

  /// Check if screen is large
  static bool isLargeScreen(BuildContext context) {
    return getScreenSize(context) == ScreenSize.large;
  }

  /// Get responsive value based on device type
  static T responsiveValue<T>(
    BuildContext context, {
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    switch (getDeviceType(context)) {
      case DeviceType.desktop:
        return desktop ?? tablet ?? mobile;
      case DeviceType.tablet:
        return tablet ?? mobile;
      case DeviceType.mobile:
        return mobile;
    }
  }

  /// Get responsive columns for grid layouts
  static int getResponsiveColumns(
    BuildContext context, {
    int mobile = 1,
    int? tablet,
    int? desktop,
  }) {
    return responsiveValue<int>(
      context,
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
    );
  }

  /// Get responsive aspect ratio
  static double getResponsiveAspectRatio(
    BuildContext context, {
    double mobile = 1.0,
    double? tablet,
    double? desktop,
  }) {
    return responsiveValue<double>(
      context,
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
    );
  }

  /// Get screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Get screen height
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// Get safe area padding
  static EdgeInsets getSafeAreaPadding(BuildContext context) {
    return MediaQuery.of(context).padding;
  }

  /// Get status bar height
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  /// Get bottom safe area height
  static double getBottomSafeAreaHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  /// Check if device is in landscape mode
  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  /// Check if device is in portrait mode
  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  /// Get device pixel ratio
  static double getDevicePixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  /// Get text scale factor
  static TextScaler getTextScaler(BuildContext context) {
    return MediaQuery.of(context).textScaler;
  }
}
