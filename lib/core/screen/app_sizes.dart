import 'package:flutter/material.dart';

/// Comprehensive sizing system for Flutter applications
///
/// Provides consistent spacing, sizing, and responsive design utilities
/// that work across different screen sizes and device types.
class AppSizes {
  AppSizes._(); // Prevent instantiation

  // MARK: - Base Size Constants

  /// Extra small size (4px)
  static const double xs = 4.0;

  /// Small size (8px)
  static const double sm = 8.0;

  /// Medium size (16px)
  static const double md = 16.0;

  /// Large size (24px)
  static const double lg = 24.0;

  /// Extra large size (32px)
  static const double xl = 32.0;

  /// Extra extra large size (48px)
  static const double xxl = 48.0;

  /// Extra extra extra large size (64px)
  static const double xxxl = 64.0;

  // MARK: - Padding Size Objects (with extensions)

  /// Extra small padding (4px)
  static const AppPadding paddingXs = AppPadding._(xs);

  /// Small padding (8px)
  static const AppPadding paddingSm = AppPadding._(sm);

  /// Medium padding (16px)
  static const AppPadding paddingMd = AppPadding._(md);

  /// Large padding (24px)
  static const AppPadding paddingLg = AppPadding._(lg);

  /// Extra large padding (32px)
  static const AppPadding paddingXl = AppPadding._(xl);

  /// Extra extra large padding (48px)
  static const AppPadding paddingXxl = AppPadding._(xxl);

  // MARK: - Margin Size Objects (with extensions)

  /// Extra small margin (4px)
  static const AppMargin marginXs = AppMargin._(xs);

  /// Small margin (8px)
  static const AppMargin marginSm = AppMargin._(sm);

  /// Medium margin (16px)
  static const AppMargin marginMd = AppMargin._(md);

  /// Large margin (24px)
  static const AppMargin marginLg = AppMargin._(lg);

  /// Extra large margin (32px)
  static const AppMargin marginXl = AppMargin._(xl);

  /// Extra extra large margin (48px)
  static const AppMargin marginXxl = AppMargin._(xxl);

  // MARK: - Radius Size Objects (with extensions)

  /// Extra small radius (2px)
  static const AppRadius radiusXs = AppRadius._(2.0);

  /// Small radius (4px)
  static const AppRadius radiusSm = AppRadius._(4.0);

  /// Medium radius (8px)
  static const AppRadius radiusMd = AppRadius._(8.0);

  /// Large radius (12px)
  static const AppRadius radiusLg = AppRadius._(12.0);

  /// Extra large radius (16px)
  static const AppRadius radiusXl = AppRadius._(16.0);

  /// Extra extra large radius (24px)
  static const AppRadius radiusXxl = AppRadius._(24.0);

  /// Round radius (999px) - for circular elements
  static const AppRadius radiusRound = AppRadius._(999.0);

  // MARK: - Icon sizes
  static const double iconXs = 12.0;
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;
  static const double iconXl = 48.0;
  static const double iconXxl = 64.0;

  // MARK: - Button sizes
  static const double buttonHeightSm = 32.0;
  static const double buttonHeightMd = 40.0;
  static const double buttonHeightLg = 48.0;
  static const double buttonHeightXl = 56.0;

  // MARK: - Avatar sizes
  static const double avatarXs = 24.0;
  static const double avatarSm = 32.0;
  static const double avatarMd = 40.0;
  static const double avatarLg = 56.0;
  static const double avatarXl = 80.0;
  static const double avatarXxl = 120.0;

  // MARK: - App bar heights
  static const double appBarHeight = 56.0;
  static const double appBarHeightLarge = 64.0;

  // MARK: - Bottom navigation heights
  static const double bottomNavHeight = 60.0;
  static const double bottomNavHeightLarge = 80.0;

  // MARK: - Card elevations
  static const double elevationSm = 2.0;
  static const double elevationMd = 4.0;
  static const double elevationLg = 8.0;
  static const double elevationXl = 16.0;

  // MARK: - Breakpoints for responsive design

  /// Mobile breakpoint (up to 600px)
  static const double mobileBreakpoint = 600.0;

  /// Tablet breakpoint (601px to 1024px)
  static const double tabletBreakpoint = 1024.0;

  /// Desktop breakpoint (1025px and above)
  static const double desktopBreakpoint = 1025.0;

  // MARK: - Container constraints

  /// Maximum content width for readability
  static const double maxContentWidth = 1200.0;

  /// Maximum form width
  static const double maxFormWidth = 400.0;

  /// Maximum card width
  static const double maxCardWidth = 600.0;

  // MARK: - Touch targets (accessibility)

  /// Minimum touch target size (44px as per accessibility guidelines)
  static const double minTouchTarget = 44.0;

  /// Recommended touch target size
  static const double touchTarget = 48.0;

  // MARK: - Utility methods

  /// Get responsive size based on screen width
  static double responsive(
    BuildContext context, {
    required double mobile,
    double? tablet,
    double? desktop,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= desktopBreakpoint) {
      return desktop ?? tablet ?? mobile;
    } else if (screenWidth >= mobileBreakpoint) {
      return tablet ?? mobile;
    } else {
      return mobile;
    }
  }

  /// Get size multiplier based on screen size
  static double getScaleFactor(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= desktopBreakpoint) {
      return 1.2; // 20% larger on desktop
    } else if (screenWidth >= mobileBreakpoint) {
      return 1.1; // 10% larger on tablet
    } else {
      return 1.0; // Base size on mobile
    }
  }

  /// Get scaled size based on screen
  static double scaled(BuildContext context, double baseSize) {
    return baseSize * getScaleFactor(context);
  }
}

/// Wrapper class for padding values with convenient getters
class AppPadding {
  final double value;

  const AppPadding._(this.value);

  /// EdgeInsets.all(value)
  EdgeInsets get all => EdgeInsets.all(value);

  /// EdgeInsets.symmetric(horizontal: value)
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: value);

  /// EdgeInsets.symmetric(vertical: value)
  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: value);

  /// EdgeInsets.only(left: value)
  EdgeInsets get left => EdgeInsets.only(left: value);

  /// EdgeInsets.only(right: value)
  EdgeInsets get right => EdgeInsets.only(right: value);

  /// EdgeInsets.only(top: value)
  EdgeInsets get top => EdgeInsets.only(top: value);

  /// EdgeInsets.only(bottom: value)
  EdgeInsets get bottom => EdgeInsets.only(bottom: value);

  /// Custom EdgeInsets.only()
  EdgeInsets only({double? left, double? top, double? right, double? bottom}) =>
      EdgeInsets.only(
        left: left ?? 0,
        top: top ?? 0,
        right: right ?? 0,
        bottom: bottom ?? 0,
      );

  /// Custom EdgeInsets.symmetric()
  EdgeInsets symmetric({double? horizontal, double? vertical}) =>
      EdgeInsets.symmetric(
        horizontal: horizontal ?? 0,
        vertical: vertical ?? 0,
      );

  /// Get the raw double value
  double get size => value;

  /// Create SizedBox with height
  SizedBox get height => SizedBox(height: value);

  /// Create SizedBox with width
  SizedBox get width => SizedBox(width: value);
}

/// Wrapper class for margin values with convenient getters
class AppMargin {
  final double value;

  const AppMargin._(this.value);

  /// EdgeInsets.all(value)
  EdgeInsets get all => EdgeInsets.all(value);

  /// EdgeInsets.symmetric(horizontal: value)
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: value);

  /// EdgeInsets.symmetric(vertical: value)
  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: value);

  /// EdgeInsets.only(left: value)
  EdgeInsets get left => EdgeInsets.only(left: value);

  /// EdgeInsets.only(right: value)
  EdgeInsets get right => EdgeInsets.only(right: value);

  /// EdgeInsets.only(top: value)
  EdgeInsets get top => EdgeInsets.only(top: value);

  /// EdgeInsets.only(bottom: value)
  EdgeInsets get bottom => EdgeInsets.only(bottom: value);

  /// Custom EdgeInsets.only()
  EdgeInsets only({double? left, double? top, double? right, double? bottom}) =>
      EdgeInsets.only(
        left: left ?? 0,
        top: top ?? 0,
        right: right ?? 0,
        bottom: bottom ?? 0,
      );

  /// Custom EdgeInsets.symmetric()
  EdgeInsets symmetric({double? horizontal, double? vertical}) =>
      EdgeInsets.symmetric(
        horizontal: horizontal ?? 0,
        vertical: vertical ?? 0,
      );

  /// Get the raw double value
  double get size => value;

  /// Create SizedBox with height
  SizedBox get height => SizedBox(height: value);

  /// Create SizedBox with width
  SizedBox get width => SizedBox(width: value);
}

/// Wrapper class for radius values with convenient getters
class AppRadius {
  final double value;

  const AppRadius._(this.value);

  /// BorderRadius.circular(value)
  BorderRadius get all => BorderRadius.circular(value);

  /// BorderRadius.only(topLeft: Radius.circular(value), topRight: Radius.circular(value))
  BorderRadius get top => BorderRadius.only(
    topLeft: Radius.circular(value),
    topRight: Radius.circular(value),
  );

  /// BorderRadius.only(bottomLeft: Radius.circular(value), bottomRight: Radius.circular(value))
  BorderRadius get bottom => BorderRadius.only(
    bottomLeft: Radius.circular(value),
    bottomRight: Radius.circular(value),
  );

  /// BorderRadius.only(topLeft: Radius.circular(value), bottomLeft: Radius.circular(value))
  BorderRadius get left => BorderRadius.only(
    topLeft: Radius.circular(value),
    bottomLeft: Radius.circular(value),
  );

  /// BorderRadius.only(topRight: Radius.circular(value), bottomRight: Radius.circular(value))
  BorderRadius get right => BorderRadius.only(
    topRight: Radius.circular(value),
    bottomRight: Radius.circular(value),
  );

  /// Custom BorderRadius.only()
  BorderRadius only({
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) => BorderRadius.only(
    topLeft: Radius.circular(topLeft ?? 0),
    topRight: Radius.circular(topRight ?? 0),
    bottomLeft: Radius.circular(bottomLeft ?? 0),
    bottomRight: Radius.circular(bottomRight ?? 0),
  );

  /// Get the raw double value
  double get size => value;

  /// Get Radius object
  Radius get radius => Radius.circular(value);
}
