import 'navigation_service.dart';

class Go {
  /// Unified navigation - supports both String routes and Widget pages
  static Future<dynamic> sailTo(
    dynamic destination, {
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

  /// Unified swap - supports both String routes and Widget pages
  static Future<dynamic> swapTo(
    dynamic destination, {
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

  /// Unified fresh start - supports both String routes and Widget pages
  static Future<dynamic> freshStartTo(
    dynamic destination, {
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

  // Convenience methods with specific transitions

  /// Navigate with fade transition - supports both String and Widget
  static Future<dynamic> fade(
    dynamic destination, {
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

  /// Navigate with slide left transition - supports both String and Widget
  static Future<dynamic> slideLeft(
    dynamic destination, {
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

  /// Navigate with slide up transition - supports both String and Widget
  static Future<dynamic> slideUp(
    dynamic destination, {
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

  /// Show modal with slide up transition - supports both String and Widget
  static Future<dynamic> modal(
    dynamic destination, {
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
}
