import 'package:flutter/material.dart';

import 'navigation_service.dart';

class Go {
  /// Navigate to a widget directly with optional transition
  static Future<dynamic> sailTo(
    Widget destination, {
    dynamic arguments,
    TransitionType transition = TransitionType.platform,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return NavigationService().sailTo(
      destination,
      arguments: arguments,
      transition: transition,
      duration: duration,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    );
  }

  /// Navigate to a named route with optional transition
  static Future<dynamic> sailToName(
    String routeName, {
    dynamic arguments,
    TransitionType transition = TransitionType.platform,
    Duration? duration,
  }) {
    return NavigationService().sailToName(
      routeName,
      arguments: arguments,
      transition: transition,
      duration: duration,
    );
  }

  /// Replace current route with a widget
  static Future<dynamic> swapTo(
    Widget destination, {
    dynamic arguments,
    TransitionType transition = TransitionType.platform,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return NavigationService().swapTo(
      destination,
      arguments: arguments,
      transition: transition,
      duration: duration,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    );
  }

  /// Replace current route with a named route
  static Future<dynamic> swapToName(
    String routeName, {
    dynamic arguments,
    TransitionType transition = TransitionType.platform,
    Duration? duration,
  }) {
    return NavigationService().swapToName(
      routeName,
      arguments: arguments,
      transition: transition,
      duration: duration,
    );
  }

  /// Clear stack and navigate to widget
  static Future<dynamic> freshStartTo(
    Widget destination, {
    dynamic arguments,
    TransitionType transition = TransitionType.platform,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return NavigationService().freshStartTo(
      destination,
      arguments: arguments,
      transition: transition,
      duration: duration,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    );
  }

  /// Clear stack and navigate to named route
  static Future<dynamic> freshStartToName(
    String routeName, {
    dynamic arguments,
    TransitionType transition = TransitionType.platform,
    Duration? duration,
  }) {
    return NavigationService().freshStartToName(
      routeName,
      arguments: arguments,
      transition: transition,
      duration: duration,
    );
  }

  // Enhanced navigation methods
  static void backtrack() {
    NavigationService().backtrack();
  }

  static void backtrackWithResult<T extends Object?>([T? result]) {
    NavigationService().backtrackWithResult(result);
  }

  static bool canPop() {
    return NavigationService().canPop();
  }

  static void popUntil(String routeName) {
    NavigationService().popUntil(routeName);
  }

  static String? getCurrentRouteName() {
    return NavigationService().getCurrentRouteName();
  }

  // Convenience methods with specific transitions for widgets
  static Future<dynamic> fade(
    Widget destination, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailTo(
      destination,
      arguments: arguments,
      transition: TransitionType.fade,
      duration: duration,
    );
  }

  static Future<dynamic> fadeToName(
    String routeName, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailToName(
      routeName,
      arguments: arguments,
      transition: TransitionType.fade,
      duration: duration,
    );
  }

  static Future<dynamic> slideLeft(
    Widget destination, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailTo(
      destination,
      arguments: arguments,
      transition: TransitionType.slideLeft,
      duration: duration,
    );
  }

  static Future<dynamic> slideLeftToName(
    String routeName, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailToName(
      routeName,
      arguments: arguments,
      transition: TransitionType.slideLeft,
      duration: duration,
    );
  }

  static Future<dynamic> slideUp(
    Widget destination, {
    dynamic arguments,
    Duration? duration,
    bool fullscreenDialog = true,
  }) {
    return sailTo(
      destination,
      arguments: arguments,
      transition: TransitionType.slideUp,
      duration: duration,
      fullscreenDialog: fullscreenDialog,
    );
  }

  static Future<dynamic> slideUpToName(
    String routeName, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailToName(
      routeName,
      arguments: arguments,
      transition: TransitionType.slideUp,
      duration: duration,
    );
  }

  static Future<dynamic> slideRight(
    Widget destination, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailTo(
      destination,
      arguments: arguments,
      transition: TransitionType.slideRight,
      duration: duration,
    );
  }

  static Future<dynamic> slideRightToName(
    String routeName, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailToName(
      routeName,
      arguments: arguments,
      transition: TransitionType.slideRight,
      duration: duration,
    );
  }

  static Future<dynamic> slideDown(
    Widget destination, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailTo(
      destination,
      arguments: arguments,
      transition: TransitionType.slideDown,
      duration: duration,
    );
  }

  static Future<dynamic> slideDownToName(
    String routeName, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailToName(
      routeName,
      arguments: arguments,
      transition: TransitionType.slideDown,
      duration: duration,
    );
  }

  static Future<dynamic> scale(
    Widget destination, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailTo(
      destination,
      arguments: arguments,
      transition: TransitionType.scale,
      duration: duration,
    );
  }

  static Future<dynamic> scaleToName(
    String routeName, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailToName(
      routeName,
      arguments: arguments,
      transition: TransitionType.scale,
      duration: duration,
    );
  }

  static Future<dynamic> rotation(
    Widget destination, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailTo(
      destination,
      arguments: arguments,
      transition: TransitionType.rotation,
      duration: duration,
    );
  }

  static Future<dynamic> rotationToName(
    String routeName, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailToName(
      routeName,
      arguments: arguments,
      transition: TransitionType.rotation,
      duration: duration,
    );
  }

  /// Show modal with slide up transition
  static Future<dynamic> modal(
    Widget destination, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailTo(
      destination,
      arguments: arguments,
      transition: TransitionType.slideUp,
      duration: duration,
      fullscreenDialog: true,
    );
  }

  static Future<dynamic> modalToName(
    String routeName, {
    dynamic arguments,
    Duration? duration,
  }) {
    return sailToName(
      routeName,
      arguments: arguments,
      transition: TransitionType.slideUp,
      duration: duration,
    );
  }
}
