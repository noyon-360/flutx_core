import 'package:flutter/material.dart';
import 'responsive_helper.dart';
import 'app_sizes.dart';

/// Responsive container that adapts its constraints based on screen size
class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  final double? mobileMaxWidth;
  final double? tabletMaxWidth;
  final double? desktopMaxWidth;
  final EdgeInsets? mobilePadding;
  final EdgeInsets? tabletPadding;
  final EdgeInsets? desktopPadding;
  final bool centerContent;

  const ResponsiveContainer({
    super.key,
    required this.child,
    this.mobileMaxWidth,
    this.tabletMaxWidth,
    this.desktopMaxWidth,
    this.mobilePadding,
    this.tabletPadding,
    this.desktopPadding,
    this.centerContent = true,
  });

  @override
  Widget build(BuildContext context) {
    final deviceType = ResponsiveHelper.getDeviceType(context);
    
    double? maxWidth;
    EdgeInsets? padding;
    
    switch (deviceType) {
      case DeviceType.mobile:
        maxWidth = mobileMaxWidth;
        padding = mobilePadding ?? AppSizes.paddingMd.all;
        break;
      case DeviceType.tablet:
        maxWidth = tabletMaxWidth ?? mobileMaxWidth;
        padding = tabletPadding ?? mobilePadding ?? AppSizes.paddingLg.all;
        break;
      case DeviceType.desktop:
        maxWidth = desktopMaxWidth ?? tabletMaxWidth ?? AppSizes.maxContentWidth;
        padding = desktopPadding ?? tabletPadding ?? AppSizes.paddingXl.all;
        break;
    }

    Widget content = Container(
      constraints: maxWidth != null ? BoxConstraints(maxWidth: maxWidth) : null,
      padding: padding,
      child: child,
    );

    if (centerContent) {
      content = Center(child: content);
    }

    return content;
  }
}

/// Responsive grid that adapts column count based on screen size
class ResponsiveGrid extends StatelessWidget {
  final List<Widget> children;
  final int mobileColumns;
  final int? tabletColumns;
  final int? desktopColumns;
  final double spacing;
  final double runSpacing;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;

  const ResponsiveGrid({
    super.key,
    required this.children,
    this.mobileColumns = 1,
    this.tabletColumns,
    this.desktopColumns,
    this.spacing = 16.0,
    this.runSpacing = 16.0,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    final columns = ResponsiveHelper.getResponsiveColumns(
      context,
      mobile: mobileColumns,
      tablet: tabletColumns,
      desktop: desktopColumns,
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = (constraints.maxWidth - (spacing * (columns - 1))) / columns;
        
        final rows = <Widget>[];
        for (int i = 0; i < children.length; i += columns) {
          final rowChildren = <Widget>[];
          
          for (int j = 0; j < columns && i + j < children.length; j++) {
            rowChildren.add(
              SizedBox(
                width: itemWidth,
                child: children[i + j],
              ),
            );
          }
          
          // Fill remaining spaces if needed
          while (rowChildren.length < columns) {
            rowChildren.add(SizedBox(width: itemWidth));
          }
          
          rows.add(
            Row(
              crossAxisAlignment: crossAxisAlignment,
              mainAxisAlignment: mainAxisAlignment,
              children: rowChildren
                  .expand((child) => [child, if (child != rowChildren.last) SizedBox(width: spacing)])
                  .toList(),
            ),
          );
        }

        return Column(
          children: rows
              .expand((row) => [row, if (row != rows.last) SizedBox(height: runSpacing)])
              .toList(),
        );
      },
    );
  }
}

/// Responsive row that stacks vertically on small screens
class ResponsiveRow extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final double spacing;
  final bool stackOnMobile;

  const ResponsiveRow({
    super.key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.spacing = 16.0,
    this.stackOnMobile = true,
  });

  @override
  Widget build(BuildContext context) {
    if (stackOnMobile && ResponsiveHelper.isMobile(context)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children
            .expand((child) => [child, if (child != children.last) SizedBox(height: spacing)])
            .toList(),
      );
    }

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: children
          .expand((child) => [child, if (child != children.last) SizedBox(width: spacing)])
          .toList(),
    );
  }
}

/// Responsive padding widget
class ResponsivePadding extends StatelessWidget {
  final Widget child;
  final EdgeInsets? mobile;
  final EdgeInsets? tablet;
  final EdgeInsets? desktop;

  const ResponsivePadding({
    super.key,
    required this.child,
    this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    final padding = ResponsiveHelper.responsiveValue<EdgeInsets>(
      context,
      mobile: mobile ?? AppSizes.paddingMd.all,
      tablet: tablet,
      desktop: desktop,
    );

    return Padding(padding: padding, child: child);
  }
}

/// Responsive sized box
class ResponsiveSizedBox extends StatelessWidget {
  final double? mobileHeight;
  final double? tabletHeight;
  final double? desktopHeight;
  final double? mobileWidth;
  final double? tabletWidth;
  final double? desktopWidth;
  final Widget? child;

  const ResponsiveSizedBox({
    super.key,
    this.mobileHeight,
    this.tabletHeight,
    this.desktopHeight,
    this.mobileWidth,
    this.tabletWidth,
    this.desktopWidth,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final height = ResponsiveHelper.responsiveValue<double?>(
      context,
      mobile: mobileHeight,
      tablet: tabletHeight,
      desktop: desktopHeight,
    );

    final width = ResponsiveHelper.responsiveValue<double?>(
      context,
      mobile: mobileWidth,
      tablet: tabletWidth,
      desktop: desktopWidth,
    );

    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}

/// Responsive text that scales based on screen size
class ResponsiveText extends StatelessWidget {
  final String text;
  final double? mobileFontSize;
  final double? tabletFontSize;
  final double? desktopFontSize;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const ResponsiveText(
    this.text, {
    super.key,
    this.mobileFontSize,
    this.tabletFontSize,
    this.desktopFontSize,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final fontSize = ResponsiveHelper.responsiveValue<double?>(
      context,
      mobile: mobileFontSize,
      tablet: tabletFontSize,
      desktop: desktopFontSize,
    );

    return Text(
      text,
      style: (style ?? const TextStyle()).copyWith(fontSize: fontSize),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}