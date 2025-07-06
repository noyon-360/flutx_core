import 'package:flutter/material.dart';

/// A comprehensive text styling system for Flutter applications
///
/// This class provides a consistent set of text styles that can be used
/// across any Flutter project with customizable fonts, colors, and sizing.
class AppTextStyles {
  AppTextStyles._(); // Prevent instantiation

  // Default font families - can be customized
  static const String _defaultFontFamily = 'Inter';
  static const String _headingFontFamily = 'Poppins';
  static const String _monospaceFontFamily = 'JetBrains Mono';

  // Base text scaling factor
  static double _textScaleFactor = 1.0;

  /// Set custom text scale factor for accessibility
  static void setTextScaleFactor(double factor) {
    _textScaleFactor = factor;
  }

  /// Get scaled font size
  static double _scaledSize(double size) => size * _textScaleFactor;

  // MARK: - Semantic Text Styles (Recommended for most use cases)

  /// Display styles - for large, prominent text
  static TextStyle displayLarge({
    Color? color,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(57),
    fontWeight: FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _headingFontFamily,
    letterSpacing: letterSpacing ?? -0.25,
    height: height ?? 1.12,
  );

  static TextStyle displayMedium({
    Color? color,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(45),
    fontWeight: FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _headingFontFamily,
    letterSpacing: letterSpacing,
    height: height ?? 1.16,
  );

  static TextStyle displaySmall({
    Color? color,
    String? fontFamily,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(36),
    fontWeight: FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _headingFontFamily,
    letterSpacing: letterSpacing,
    height: height ?? 1.22,
  );

  /// Headline styles - for section headers
  static TextStyle headlineLarge({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(32),
    fontWeight: fontWeight ?? FontWeight.w600,
    color: color,
    fontFamily: fontFamily ?? _headingFontFamily,
    letterSpacing: letterSpacing,
    height: height ?? 1.25,
  );

  static TextStyle headlineMedium({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(28),
    fontWeight: fontWeight ?? FontWeight.w600,
    color: color,
    fontFamily: fontFamily ?? _headingFontFamily,
    letterSpacing: letterSpacing,
    height: height ?? 1.29,
  );

  static TextStyle headlineSmall({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(24),
    fontWeight: fontWeight ?? FontWeight.w600,
    color: color,
    fontFamily: fontFamily ?? _headingFontFamily,
    letterSpacing: letterSpacing,
    height: height ?? 1.33,
  );

  /// Title styles - for card titles, dialog titles
  static TextStyle titleLarge({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(22),
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing,
    height: height ?? 1.27,
  );

  static TextStyle titleMedium({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(16),
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing ?? 0.15,
    height: height ?? 1.5,
  );

  static TextStyle titleSmall({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(14),
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing ?? 0.1,
    height: height ?? 1.43,
  );

  /// Body styles - for main content
  static TextStyle bodyLarge({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(16),
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing ?? 0.5,
    height: height ?? 1.5,
  );

  static TextStyle bodyMedium({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(14),
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing ?? 0.25,
    height: height ?? 1.43,
  );

  static TextStyle bodySmall({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(12),
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing ?? 0.4,
    height: height ?? 1.33,
  );

  /// Label styles - for buttons, tabs, form labels
  static TextStyle labelLarge({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(14),
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing ?? 0.1,
    height: height ?? 1.43,
  );

  static TextStyle labelMedium({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(12),
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing ?? 0.5,
    height: height ?? 1.33,
  );

  static TextStyle labelSmall({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(11),
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing ?? 0.5,
    height: height ?? 1.45,
  );

  // MARK: - Specialized Text Styles

  /// Caption style - for image captions, footnotes
  static TextStyle caption({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(12),
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing ?? 0.4,
    height: height ?? 1.33,
  );

  /// Overline style - for category labels, timestamps
  static TextStyle overline({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(10),
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing ?? 1.5,
    height: height ?? 1.6,
  );

  /// Monospace style - for code, numbers
  static TextStyle monospace({
    double? fontSize,
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) => _createStyle(
    fontSize: _scaledSize(fontSize ?? 14),
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _monospaceFontFamily,
    letterSpacing: letterSpacing,
    height: height ?? 1.4,
  );

  // MARK: - Size-based Text Styles (for backward compatibility)

  /// Extra large text styles
  static TextStyle xl({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => _createStyle(
    fontSize: _scaledSize(36),
    fontWeight: fontWeight ?? FontWeight.w700,
    color: color,
    fontFamily: fontFamily ?? _headingFontFamily,
  );

  static TextStyle lg({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => _createStyle(
    fontSize: _scaledSize(24),
    fontWeight: fontWeight ?? FontWeight.w600,
    color: color,
    fontFamily: fontFamily ?? _headingFontFamily,
  );

  static TextStyle md({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => _createStyle(
    fontSize: _scaledSize(18),
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
  );

  static TextStyle sm({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => _createStyle(
    fontSize: _scaledSize(14),
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
  );

  static TextStyle xs({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => _createStyle(
    fontSize: _scaledSize(12),
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
  );

  // MARK: - Shorthand Text Styles (New Feature)

  /// Shorthand text styles with font size and weight
  /// Usage: AppTextStyles.text12w400()
  static TextStyle text8w100({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(8),
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text8w200({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(8),
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text8w300({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(8),
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text8w400({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(8),
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text8w500({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(8),
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text8w600({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(8),
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text8w700({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(8),
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text8w800({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(8),
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text8w900({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(8),
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle text10w100({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(10),
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text10w200({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(10),
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text10w300({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(10),
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text10w400({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(10),
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text10w500({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(10),
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text10w600({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(10),
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text10w700({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(10),
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text10w800({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(10),
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text10w900({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(10),
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle text12w100({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(12),
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text12w200({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(12),
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text12w300({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(12),
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text12w400({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(12),
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text12w500({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(12),
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text12w600({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(12),
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text12w700({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(12),
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text12w800({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(12),
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text12w900({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(12),
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle text14w100({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(14),
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text14w200({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(14),
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text14w300({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(14),
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text14w400({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(14),
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text14w500({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(14),
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text14w600({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(14),
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text14w700({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(14),
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text14w800({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(14),
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text14w900({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(14),
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle text16w100({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(16),
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text16w200({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(16),
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text16w300({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(16),
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text16w400({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(16),
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text16w500({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(16),
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text16w600({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(16),
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text16w700({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(16),
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text16w800({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(16),
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text16w900({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(16),
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle text18w100({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(18),
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text18w200({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(18),
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text18w300({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(18),
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text18w400({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(18),
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text18w500({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(18),
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text18w600({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(18),
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text18w700({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(18),
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text18w800({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(18),
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text18w900({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(18),
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle text20w100({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(20),
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text20w200({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(20),
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text20w300({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(20),
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text20w400({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(20),
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text20w500({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(20),
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text20w600({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(20),
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text20w700({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(20),
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text20w800({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(20),
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text20w900({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(20),
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle text24w100({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(24),
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text24w200({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(24),
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text24w300({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(24),
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text24w400({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(24),
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text24w500({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(24),
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text24w600({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(24),
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text24w700({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(24),
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text24w800({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(24),
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text24w900({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(24),
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle text28w100({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(28),
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text28w200({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(28),
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text28w300({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(28),
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text28w400({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(28),
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text28w500({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(28),
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text28w600({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(28),
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text28w700({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(28),
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text28w800({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(28),
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text28w900({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(28),
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
      );

  static TextStyle text32w100({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(32),
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text32w200({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(32),
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text32w300({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(32),
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text32w400({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(32),
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text32w500({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(32),
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text32w600({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(32),
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text32w700({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(32),
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text32w800({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(32),
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
      );
  static TextStyle text32w900({Color? color, String? fontFamily}) =>
      _createStyle(
        fontSize: _scaledSize(32),
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
      );

  // MARK: - Utility Methods

  /// Create a custom text style with specified parameters
  static TextStyle custom({
    required double fontSize,
    FontWeight? fontWeight,
    Color? color,
    String? fontFamily,
    double? letterSpacing,
    double? height,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    List<Shadow>? shadows,
  }) => _createStyle(
    fontSize: _scaledSize(fontSize),
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
    fontFamily: fontFamily ?? _defaultFontFamily,
    letterSpacing: letterSpacing,
    height: height,
    decoration: decoration,
    decorationColor: decorationColor,
    decorationStyle: decorationStyle,
    decorationThickness: decorationThickness,
    shadows: shadows,
  );

  /// Internal method to create TextStyle
  static TextStyle _createStyle({
    required double fontSize,
    required FontWeight fontWeight,
    Color? color,
    String? fontFamily,
    double? letterSpacing,
    double? height,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    List<Shadow>? shadows,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
      height: height,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      shadows: shadows,
    );
  }
}
