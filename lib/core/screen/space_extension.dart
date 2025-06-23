import 'package:flutter/material.dart';
import 'responsive_helper.dart';

/// Extension methods for easy spacing and sizing
extension SpacingExtensions on num {
  
  // MARK: - SizedBox Extensions
  
  /// Creates a SizedBox with width
  /// 
  /// Example:
  /// ```dart
  /// 16.width // SizedBox(width: 16)
  /// AppSizes.md.width // SizedBox(width: 16)
  /// ```
  SizedBox get width => SizedBox(width: toDouble());
  
  /// Creates a SizedBox with height
  /// 
  /// Example:
  /// ```dart
  /// 16.height // SizedBox(height: 16)
  /// AppSizes.md.height // SizedBox(height: 16)
  /// ```
  SizedBox get height => SizedBox(height: toDouble());
  
  /// Creates a square SizedBox
  /// 
  /// Example:
  /// ```dart
  /// 16.square // SizedBox(width: 16, height: 16)
  /// ```
  SizedBox get square => SizedBox(width: toDouble(), height: toDouble());

  // MARK: - EdgeInsets Extensions
  
  /// Creates EdgeInsets with all sides equal
  /// 
  /// Example:
  /// ```dart
  /// 16.all // EdgeInsets.all(16)
  /// ```
  EdgeInsets get all => EdgeInsets.all(toDouble());
  
  /// Creates EdgeInsets for horizontal padding
  /// 
  /// Example:
  /// ```dart
  /// 16.horizontal // EdgeInsets.symmetric(horizontal: 16)
  /// ```
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble());
  
  /// Creates EdgeInsets for vertical padding
  /// 
  /// Example:
  /// ```dart
  /// 16.vertical // EdgeInsets.symmetric(vertical: 16)
  /// ```
  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble());
  
  /// Creates EdgeInsets for left padding only
  /// 
  /// Example:
  /// ```dart
  /// 16.left // EdgeInsets.only(left: 16)
  /// ```
  EdgeInsets get left => EdgeInsets.only(left: toDouble());
  
  /// Creates EdgeInsets for right padding only
  /// 
  /// Example:
  /// ```dart
  /// 16.right // EdgeInsets.only(right: 16)
  /// ```
  EdgeInsets get right => EdgeInsets.only(right: toDouble());
  
  /// Creates EdgeInsets for top padding only
  /// 
  /// Example:
  /// ```dart
  /// 16.top // EdgeInsets.only(top: 16)
  /// ```
  EdgeInsets get top => EdgeInsets.only(top: toDouble());
  
  /// Creates EdgeInsets for bottom padding only
  /// 
  /// Example:
  /// ```dart
  /// 16.bottom // EdgeInsets.only(bottom: 16)
  /// ```
  EdgeInsets get bottom => EdgeInsets.only(bottom: toDouble());

  // MARK: - BorderRadius Extensions
  
  /// Creates BorderRadius with all corners equal
  /// 
  /// Example:
  /// ```dart
  /// 8.radius // BorderRadius.circular(8)
  /// ```
  BorderRadius get radius => BorderRadius.circular(toDouble());
  
  /// Creates BorderRadius for top corners only
  /// 
  /// Example:
  /// ```dart
  /// 8.topRadius // BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8))
  /// ```
  BorderRadius get topRadius => BorderRadius.only(
    topLeft: Radius.circular(toDouble()),
    topRight: Radius.circular(toDouble()),
  );
  
  /// Creates BorderRadius for bottom corners only
  /// 
  /// Example:
  /// ```dart
  /// 8.bottomRadius // BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))
  /// ```
  BorderRadius get bottomRadius => BorderRadius.only(
    bottomLeft: Radius.circular(toDouble()),
    bottomRight: Radius.circular(toDouble()),
  );
  
  /// Creates BorderRadius for left corners only
  /// 
  /// Example:
  /// ```dart
  /// 8.leftRadius // BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))
  /// ```
  BorderRadius get leftRadius => BorderRadius.only(
    topLeft: Radius.circular(toDouble()),
    bottomLeft: Radius.circular(toDouble()),
  );
  
  /// Creates BorderRadius for right corners only
  /// 
  /// Example:
  /// ```dart
  /// 8.rightRadius // BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8))
  /// ```
  BorderRadius get rightRadius => BorderRadius.only(
    topRight: Radius.circular(toDouble()),
    bottomRight: Radius.circular(toDouble()),
  );

  // MARK: - Duration Extensions
  
  /// Creates Duration in milliseconds
  /// 
  /// Example:
  /// ```dart
  /// 300.milliseconds // Duration(milliseconds: 300)
  /// ```
  Duration get milliseconds => Duration(milliseconds: toInt());
  
  /// Creates Duration in seconds
  /// 
  /// Example:
  /// ```dart
  /// 2.seconds // Duration(seconds: 2)
  /// ```
  Duration get seconds => Duration(seconds: toInt());
}

/// Extension methods for Widget spacing
extension WidgetSpacingExtensions on Widget {
  
  /// Adds padding to widget
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').padding(16.all)
  /// Text('Hello').padding(EdgeInsets.symmetric(horizontal: 16))
  /// ```
  Widget padding(EdgeInsets padding) {
    return Padding(padding: padding, child: this);
  }
  
  /// Adds symmetric padding to widget
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').paddingSymmetric(horizontal: 16, vertical: 8)
  /// ```
  Widget paddingSymmetric({double horizontal = 0, double vertical = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: this,
    );
  }
  
  /// Adds padding to all sides
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').paddingAll(16)
  /// ```
  Widget paddingAll(double padding) {
    return Padding(padding: EdgeInsets.all(padding), child: this);
  }
  
  /// Adds padding to specific sides
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').paddingOnly(left: 16, top: 8)
  /// ```
  Widget paddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }
  
  /// Adds margin using Container
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').margin(16.all)
  /// ```
  Widget margin(EdgeInsets margin) {
    return Container(margin: margin, child: this);
  }
  
  /// Adds symmetric margin
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').marginSymmetric(horizontal: 16, vertical: 8)
  /// ```
  Widget marginSymmetric({double horizontal = 0, double vertical = 0}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: this,
    );
  }
  
  /// Adds margin to all sides
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').marginAll(16)
  /// ```
  Widget marginAll(double margin) {
    return Container(margin: EdgeInsets.all(margin), child: this);
  }
  
  /// Adds margin to specific sides
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').marginOnly(left: 16, top: 8)
  /// ```
  Widget marginOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return Container(
      margin: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }
  
  /// Centers the widget
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').center()
  /// ```
  Widget center() {
    return Center(child: this);
  }
  
  /// Aligns the widget
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').align(Alignment.topRight)
  /// ```
  Widget align(Alignment alignment) {
    return Align(alignment: alignment, child: this);
  }
  
  /// Expands the widget
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').expand()
  /// ```
  Widget expand({int flex = 1}) {
    return Expanded(flex: flex, child: this);
  }
  
  /// Makes widget flexible
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').flexible()
  /// ```
  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) {
    return Flexible(flex: flex, fit: fit, child: this);
  }
  
  /// Adds a decorated container around widget
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').decorated(
  ///   color: Colors.blue,
  ///   borderRadius: 8.radius,
  /// )
  /// ```
  Widget decorated({
    Color? color,
    BorderRadius? borderRadius,
    Border? border,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        border: border,
        boxShadow: boxShadow,
        gradient: gradient,
      ),
      child: this,
    );
  }
  
  /// Adds a card-like decoration
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').card(elevation: 4)
  /// ```
  // Widget card({
  //   double elevation = 2,
  //   Color? color,
  //   BorderRadius? borderRadius,
  // }) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: color ?? Colors.white,
  //       borderRadius: borderRadius ?? AppSizes.radiusMd.radius,
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.black.withAlpha((0.1 * 255).toInt()),
  //           blurRadius: elevation,
  //           offset: Offset(0, elevation / 2),
  //         ),
  //       ],
  //     ),
  //     child: this,
  //   );
  // }
  
  /// Makes widget responsive based on screen size
  /// 
  /// Example:
  /// ```dart
  /// Text('Hello').responsive(
  ///   mobile: (child) => child.paddingAll(8),
  ///   tablet: (child) => child.paddingAll(16),
  ///   desktop: (child) => child.paddingAll(24),
  /// )
  /// ```
  Widget responsive(
    BuildContext context, {
    Widget Function(Widget)? mobile,
    Widget Function(Widget)? tablet,
    Widget Function(Widget)? desktop,
  }) {
    final deviceType = ResponsiveHelper.getDeviceType(context);
    
    switch (deviceType) {
      case DeviceType.desktop:
        return desktop?.call(this) ?? tablet?.call(this) ?? mobile?.call(this) ?? this;
      case DeviceType.tablet:
        return tablet?.call(this) ?? mobile?.call(this) ?? this;
      case DeviceType.mobile:
        return mobile?.call(this) ?? this;
    }
  }
}