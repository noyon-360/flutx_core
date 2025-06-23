// import 'package:flutter/material.dart';

// /// Comprehensive sizing system for Flutter applications
// /// 
// /// Provides consistent spacing, sizing, and responsive design utilities
// /// that work across different screen sizes and device types.
// class AppSizes {
//   AppSizes._(); // Prevent instantiation

//   // MARK: - Base Size Constants

//   /// Extra small size (4px)
//   static const double xs = 4.0;
  
//   /// Small size (8px)
//   static const double sm = 8.0;
  
//   /// Medium size (16px)
//   static const double md = 16.0;
  
//   /// Large size (24px)
//   static const double lg = 24.0;
  
//   /// Extra large size (32px)
//   static const double xl = 32.0;
  
//   /// Extra extra large size (48px)
//   static const double xxl = 48.0;
  
//   /// Extra extra extra large size (64px)
//   static const double xxxl = 64.0;

//   // MARK: - Specific Size Categories

//   /// Padding sizes
//   static const double paddingXs = xs;
//   static const double paddingSm = sm;
//   static const double paddingMd = md;
//   static const double paddingLg = lg;
//   static const double paddingXl = xl;
//   static const double paddingXxl = xxl;

//   /// Margin sizes
//   static const double marginXs = xs;
//   static const double marginSm = sm;
//   static const double marginMd = md;
//   static const double marginLg = lg;
//   static const double marginXl = xl;
//   static const double marginXxl = xxl;

//   /// Border radius sizes
//   static const double radiusXs = 2.0;
//   static const double radiusSm = 4.0;
//   static const double radiusMd = 8.0;
//   static const double radiusLg = 12.0;
//   static const double radiusXl = 16.0;
//   static const double radiusXxl = 24.0;
//   static const double radiusRound = 999.0; // For circular elements

//   /// Icon sizes
//   static const double iconXs = 12.0;
//   static const double iconSm = 16.0;
//   static const double iconMd = 24.0;
//   static const double iconLg = 32.0;
//   static const double iconXl = 48.0;
//   static const double iconXxl = 64.0;

//   /// Button sizes
//   static const double buttonHeightSm = 32.0;
//   static const double buttonHeightMd = 40.0;
//   static const double buttonHeightLg = 48.0;
//   static const double buttonHeightXl = 56.0;

//   /// Avatar sizes
//   static const double avatarXs = 24.0;
//   static const double avatarSm = 32.0;
//   static const double avatarMd = 40.0;
//   static const double avatarLg = 56.0;
//   static const double avatarXl = 80.0;
//   static const double avatarXxl = 120.0;

//   /// App bar heights
//   static const double appBarHeight = 56.0;
//   static const double appBarHeightLarge = 64.0;

//   /// Bottom navigation heights
//   static const double bottomNavHeight = 60.0;
//   static const double bottomNavHeightLarge = 80.0;

//   /// Card elevations
//   static const double elevationSm = 2.0;
//   static const double elevationMd = 4.0;
//   static const double elevationLg = 8.0;
//   static const double elevationXl = 16.0;

//   // MARK: - Breakpoints for responsive design

//   /// Mobile breakpoint (up to 600px)
//   static const double mobileBreakpoint = 600.0;
  
//   /// Tablet breakpoint (601px to 1024px)
//   static const double tabletBreakpoint = 1024.0;
  
//   /// Desktop breakpoint (1025px and above)
//   static const double desktopBreakpoint = 1025.0;

//   // MARK: - Container constraints

//   /// Maximum content width for readability
//   static const double maxContentWidth = 1200.0;
  
//   /// Maximum form width
//   static const double maxFormWidth = 400.0;
  
//   /// Maximum card width
//   static const double maxCardWidth = 600.0;

//   // MARK: - Touch targets (accessibility)

//   /// Minimum touch target size (44px as per accessibility guidelines)
//   static const double minTouchTarget = 44.0;
  
//   /// Recommended touch target size
//   static const double touchTarget = 48.0;

//   // MARK: - Utility methods

//   /// Get responsive size based on screen width
//   static double responsive(
//     BuildContext context, {
//     required double mobile,
//     double? tablet,
//     double? desktop,
//   }) {
//     final screenWidth = MediaQuery.of(context).size.width;
    
//     if (screenWidth >= desktopBreakpoint) {
//       return desktop ?? tablet ?? mobile;
//     } else if (screenWidth >= mobileBreakpoint) {
//       return tablet ?? mobile;
//     } else {
//       return mobile;
//     }
//   }

//   /// Get size multiplier based on screen size
//   static double getScaleFactor(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
    
//     if (screenWidth >= desktopBreakpoint) {
//       return 1.2; // 20% larger on desktop
//     } else if (screenWidth >= mobileBreakpoint) {
//       return 1.1; // 10% larger on tablet
//     } else {
//       return 1.0; // Base size on mobile
//     }
//   }

//   /// Get scaled size based on screen
//   static double scaled(BuildContext context, double baseSize) {
//     return baseSize * getScaleFactor(context);
//   }
// }