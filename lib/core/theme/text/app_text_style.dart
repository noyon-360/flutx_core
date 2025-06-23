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
