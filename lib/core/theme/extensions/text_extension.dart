import 'package:flutter/material.dart';

import '../text/app_text_style.dart';

/// Extension on String to easily apply text styles
extension StringTextExtension on String {
  /// Apply display styles
  Widget displayLarge({Color? color, String? fontFamily}) => 
      Text(this, style: AppTextStyles.displayLarge(color: color, fontFamily: fontFamily));
  
  Widget displayMedium({Color? color, String? fontFamily}) => 
      Text(this, style: AppTextStyles.displayMedium(color: color, fontFamily: fontFamily));
  
  Widget displaySmall({Color? color, String? fontFamily}) => 
      Text(this, style: AppTextStyles.displaySmall(color: color, fontFamily: fontFamily));

  /// Apply headline styles
  Widget headlineLarge({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.headlineLarge(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget headlineMedium({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.headlineMedium(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget headlineSmall({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.headlineSmall(color: color, fontFamily: fontFamily, fontWeight: fontWeight));

  /// Apply title styles
  Widget titleLarge({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.titleLarge(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget titleMedium({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.titleMedium(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget titleSmall({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.titleSmall(color: color, fontFamily: fontFamily, fontWeight: fontWeight));

  /// Apply body styles
  Widget bodyLarge({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.bodyLarge(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget bodyMedium({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.bodyMedium(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget bodySmall({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.bodySmall(color: color, fontFamily: fontFamily, fontWeight: fontWeight));

  /// Apply label styles
  Widget labelLarge({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.labelLarge(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget labelMedium({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.labelMedium(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget labelSmall({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.labelSmall(color: color, fontFamily: fontFamily, fontWeight: fontWeight));

  /// Apply specialized styles
  Widget caption({Color? color, String? fontFamily}) => 
      Text(this, style: AppTextStyles.caption(color: color, fontFamily: fontFamily));
  
  Widget overline({Color? color, String? fontFamily}) => 
      Text(this, style: AppTextStyles.overline(color: color, fontFamily: fontFamily));
  
  Widget monospace({double? fontSize, Color? color, String? fontFamily}) => 
      Text(this, style: AppTextStyles.monospace(fontSize: fontSize, color: color, fontFamily: fontFamily));

  /// Apply size-based styles
  Widget xl({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.xl(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget lg({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.lg(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget md({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.md(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget sm({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.sm(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
  
  Widget xs({Color? color, String? fontFamily, FontWeight? fontWeight}) => 
      Text(this, style: AppTextStyles.xs(color: color, fontFamily: fontFamily, fontWeight: fontWeight));
}

/// Extension on Text widget for easy style application
extension TextStyleExtension on Text {
  /// Apply any AppTextStyle to existing Text widget
  Text withStyle(TextStyle style) {
    return Text(
      data ?? '',
      style: style.merge(this.style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}