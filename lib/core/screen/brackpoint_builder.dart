import 'package:flutter/material.dart';
import 'responsive_helper.dart';

/// Builder widget that provides different layouts based on breakpoints
class BreakpointBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceType deviceType)? builder;
  final Widget Function(BuildContext context)? mobile;
  final Widget Function(BuildContext context)? tablet;
  final Widget Function(BuildContext context)? desktop;

  const BreakpointBuilder({
    super.key,
    this.builder,
    this.mobile,
    this.tablet,
    this.desktop,
  }) : assert(
          builder != null || mobile != null,
          'Either builder or mobile must be provided',
        );

  @override
  Widget build(BuildContext context) {
    final deviceType = ResponsiveHelper.getDeviceType(context);

    if (builder != null) {
      return builder!(context, deviceType);
    }

    switch (deviceType) {
      case DeviceType.desktop:
        return desktop?.call(context) ?? 
               tablet?.call(context) ?? 
               mobile!.call(context);
      case DeviceType.tablet:
        return tablet?.call(context) ?? 
               mobile!.call(context);
      case DeviceType.mobile:
        return mobile!.call(context);
    }
  }
}

/// Screen size aware builder
class ScreenSizeBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, ScreenSize screenSize, BoxConstraints constraints) builder;

  const ScreenSizeBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenSize = ResponsiveHelper.getScreenSize(context);
        return builder(context, screenSize, constraints);
      },
    );
  }
}

/// Orientation aware builder
class OrientationBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, Orientation orientation) builder;

  const OrientationBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final orientation = MediaQuery.of(context).orientation;
        return builder(context, orientation);
      },
    );
  }
}