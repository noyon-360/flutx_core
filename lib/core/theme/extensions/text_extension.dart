import 'package:flutter/material.dart';

import '../text/app_text_style.dart';

/// Extension on String to easily apply text styles with shorthand methods
extension StringTextExtension on String {
  // MARK: - Semantic Styles

  /// Apply display styles
  Widget displayLarge({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.displayLarge(color: color, fontFamily: fontFamily),
  );

  Widget displayMedium({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.displayMedium(color: color, fontFamily: fontFamily),
  );

  Widget displaySmall({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.displaySmall(color: color, fontFamily: fontFamily),
  );

  /// Apply headline styles
  Widget headlineLarge({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.headlineLarge(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget headlineMedium({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.headlineMedium(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget headlineSmall({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.headlineSmall(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  /// Apply title styles
  Widget titleLarge({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.titleLarge(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget titleMedium({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.titleMedium(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget titleSmall({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.titleSmall(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  /// Apply body styles
  Widget bodyLarge({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.bodyLarge(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget bodyMedium({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.bodyMedium(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget bodySmall({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.bodySmall(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  /// Apply label styles
  Widget labelLarge({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.labelLarge(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget labelMedium({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.labelMedium(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget labelSmall({
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) => Text(
    this,
    style: AppTextStyles.labelSmall(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  /// Apply specialized styles
  Widget caption({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.caption(color: color, fontFamily: fontFamily),
  );

  Widget overline({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.overline(color: color, fontFamily: fontFamily),
  );

  Widget monospace({double? fontSize, Color? color, String? fontFamily}) =>
      Text(
        this,
        style: AppTextStyles.monospace(
          fontSize: fontSize,
          color: color,
          fontFamily: fontFamily,
        ),
      );

  /// Apply size-based styles
  Widget xl({Color? color, String? fontFamily, FontWeight? fontWeight}) => Text(
    this,
    style: AppTextStyles.xl(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget lg({Color? color, String? fontFamily, FontWeight? fontWeight}) => Text(
    this,
    style: AppTextStyles.lg(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget md({Color? color, String? fontFamily, FontWeight? fontWeight}) => Text(
    this,
    style: AppTextStyles.md(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget sm({Color? color, String? fontFamily, FontWeight? fontWeight}) => Text(
    this,
    style: AppTextStyles.sm(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  Widget xs({Color? color, String? fontFamily, FontWeight? fontWeight}) => Text(
    this,
    style: AppTextStyles.xs(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    ),
  );

  // MARK: - Shorthand Text Styles (New Feature)

  /// 8px font sizes with different weights
  Widget text8w100({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text8w100(color: color, fontFamily: fontFamily),
  );
  Widget text8w200({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text8w200(color: color, fontFamily: fontFamily),
  );
  Widget text8w300({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text8w300(color: color, fontFamily: fontFamily),
  );
  Widget text8w400({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text8w400(color: color, fontFamily: fontFamily),
  );
  Widget text8w500({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text8w500(color: color, fontFamily: fontFamily),
  );
  Widget text8w600({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text8w600(color: color, fontFamily: fontFamily),
  );
  Widget text8w700({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text8w700(color: color, fontFamily: fontFamily),
  );
  Widget text8w800({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text8w800(color: color, fontFamily: fontFamily),
  );
  Widget text8w900({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text8w900(color: color, fontFamily: fontFamily),
  );

  /// 10px font sizes with different weights
  Widget text10w100({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text10w100(color: color, fontFamily: fontFamily),
  );
  Widget text10w200({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text10w200(color: color, fontFamily: fontFamily),
  );
  Widget text10w300({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text10w300(color: color, fontFamily: fontFamily),
  );
  Widget text10w400({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text10w400(color: color, fontFamily: fontFamily),
  );
  Widget text10w500({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text10w500(color: color, fontFamily: fontFamily),
  );
  Widget text10w600({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text10w600(color: color, fontFamily: fontFamily),
  );
  Widget text10w700({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text10w700(color: color, fontFamily: fontFamily),
  );
  Widget text10w800({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text10w800(color: color, fontFamily: fontFamily),
  );
  Widget text10w900({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text10w900(color: color, fontFamily: fontFamily),
  );

  /// 12px font sizes with different weights
  Widget text12w100({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text12w100(color: color, fontFamily: fontFamily),
  );
  Widget text12w200({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text12w200(color: color, fontFamily: fontFamily),
  );
  Widget text12w300({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text12w300(color: color, fontFamily: fontFamily),
  );
  Widget text12w400({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text12w400(color: color, fontFamily: fontFamily),
  );
  Widget text12w500({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text12w500(color: color, fontFamily: fontFamily),
  );
  Widget text12w600({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text12w600(color: color, fontFamily: fontFamily),
  );
  Widget text12w700({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text12w700(color: color, fontFamily: fontFamily),
  );
  Widget text12w800({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text12w800(color: color, fontFamily: fontFamily),
  );
  Widget text12w900({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text12w900(color: color, fontFamily: fontFamily),
  );

  /// 14px font sizes with different weights
  Widget text14w100({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text14w100(color: color, fontFamily: fontFamily),
  );
  Widget text14w200({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text14w200(color: color, fontFamily: fontFamily),
  );
  Widget text14w300({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text14w300(color: color, fontFamily: fontFamily),
  );
  Widget text14w400({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text14w400(color: color, fontFamily: fontFamily),
  );
  Widget text14w500({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text14w500(color: color, fontFamily: fontFamily),
  );
  Widget text14w600({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text14w600(color: color, fontFamily: fontFamily),
  );
  Widget text14w700({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text14w700(color: color, fontFamily: fontFamily),
  );
  Widget text14w800({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text14w800(color: color, fontFamily: fontFamily),
  );
  Widget text14w900({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text14w900(color: color, fontFamily: fontFamily),
  );

  /// 16px font sizes with different weights
  Widget text16w100({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text16w100(color: color, fontFamily: fontFamily),
  );
  Widget text16w200({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text16w200(color: color, fontFamily: fontFamily),
  );
  Widget text16w300({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text16w300(color: color, fontFamily: fontFamily),
  );
  Widget text16w400({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text16w400(color: color, fontFamily: fontFamily),
  );
  Widget text16w500({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text16w500(color: color, fontFamily: fontFamily),
  );
  Widget text16w600({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text16w600(color: color, fontFamily: fontFamily),
  );
  Widget text16w700({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text16w700(color: color, fontFamily: fontFamily),
  );
  Widget text16w800({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text16w800(color: color, fontFamily: fontFamily),
  );
  Widget text16w900({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text16w900(color: color, fontFamily: fontFamily),
  );

  /// 18px font sizes with different weights
  Widget text18w100({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text18w100(color: color, fontFamily: fontFamily),
  );
  Widget text18w200({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text18w200(color: color, fontFamily: fontFamily),
  );
  Widget text18w300({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text18w300(color: color, fontFamily: fontFamily),
  );
  Widget text18w400({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text18w400(color: color, fontFamily: fontFamily),
  );
  Widget text18w500({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text18w500(color: color, fontFamily: fontFamily),
  );
  Widget text18w600({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text18w600(color: color, fontFamily: fontFamily),
  );
  Widget text18w700({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text18w700(color: color, fontFamily: fontFamily),
  );
  Widget text18w800({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text18w800(color: color, fontFamily: fontFamily),
  );
  Widget text18w900({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text18w900(color: color, fontFamily: fontFamily),
  );

  /// 20px font sizes with different weights
  Widget text20w100({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text20w100(color: color, fontFamily: fontFamily),
  );
  Widget text20w200({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text20w200(color: color, fontFamily: fontFamily),
  );
  Widget text20w300({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text20w300(color: color, fontFamily: fontFamily),
  );
  Widget text20w400({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text20w400(color: color, fontFamily: fontFamily),
  );
  Widget text20w500({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text20w500(color: color, fontFamily: fontFamily),
  );
  Widget text20w600({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text20w600(color: color, fontFamily: fontFamily),
  );
  Widget text20w700({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text20w700(color: color, fontFamily: fontFamily),
  );
  Widget text20w800({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text20w800(color: color, fontFamily: fontFamily),
  );
  Widget text20w900({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text20w900(color: color, fontFamily: fontFamily),
  );

  /// 24px font sizes with different weights
  Widget text24w100({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text24w100(color: color, fontFamily: fontFamily),
  );
  Widget text24w200({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text24w200(color: color, fontFamily: fontFamily),
  );
  Widget text24w300({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text24w300(color: color, fontFamily: fontFamily),
  );
  Widget text24w400({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text24w400(color: color, fontFamily: fontFamily),
  );
  Widget text24w500({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text24w500(color: color, fontFamily: fontFamily),
  );
  Widget text24w600({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text24w600(color: color, fontFamily: fontFamily),
  );
  Widget text24w700({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text24w700(color: color, fontFamily: fontFamily),
  );
  Widget text24w800({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text24w800(color: color, fontFamily: fontFamily),
  );
  Widget text24w900({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text24w900(color: color, fontFamily: fontFamily),
  );

  /// 28px font sizes with different weights
  Widget text28w100({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text28w100(color: color, fontFamily: fontFamily),
  );
  Widget text28w200({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text28w200(color: color, fontFamily: fontFamily),
  );
  Widget text28w300({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text28w300(color: color, fontFamily: fontFamily),
  );
  Widget text28w400({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text28w400(color: color, fontFamily: fontFamily),
  );
  Widget text28w500({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text28w500(color: color, fontFamily: fontFamily),
  );
  Widget text28w600({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text28w600(color: color, fontFamily: fontFamily),
  );
  Widget text28w700({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text28w700(color: color, fontFamily: fontFamily),
  );
  Widget text28w800({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text28w800(color: color, fontFamily: fontFamily),
  );
  Widget text28w900({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text28w900(color: color, fontFamily: fontFamily),
  );

  /// 32px font sizes with different weights
  Widget text32w100({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text32w100(color: color, fontFamily: fontFamily),
  );
  Widget text32w200({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text32w200(color: color, fontFamily: fontFamily),
  );
  Widget text32w300({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text32w300(color: color, fontFamily: fontFamily),
  );
  Widget text32w400({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text32w400(color: color, fontFamily: fontFamily),
  );
  Widget text32w500({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text32w500(color: color, fontFamily: fontFamily),
  );
  Widget text32w600({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text32w600(color: color, fontFamily: fontFamily),
  );
  Widget text32w700({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text32w700(color: color, fontFamily: fontFamily),
  );
  Widget text32w800({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text32w800(color: color, fontFamily: fontFamily),
  );
  Widget text32w900({Color? color, String? fontFamily}) => Text(
    this,
    style: AppTextStyles.text32w900(color: color, fontFamily: fontFamily),
  );

  // MARK: - Style Function (Alternative Syntax)

  /// Alternative syntax: "hello".style(font: AppTextStyles.text12w400())
  Widget style({required TextStyle font}) => Text(this, style: font);
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
