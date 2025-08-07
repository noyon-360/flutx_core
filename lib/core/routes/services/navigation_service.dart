import 'package:flutter/material.dart';
import '../transitions/fade_route.dart';
import '../transitions/slide_left.dart';
import '../transitions/slide_up.dart';
import '../transitions/slide_right.dart';
import '../transitions/slide_down.dart';
import '../transitions/scale_route.dart';
import '../transitions/rotation_route.dart';

enum TransitionType {
  fade,
  slideLeft,
  slideRight,
  slideUp,
  slideDown,
  scale,
  rotation,
  platform, // Uses platform default
}

class NavigationService {
  // Private constructor
  NavigationService._internal();

  // Singleton instance
  static final NavigationService _instance = NavigationService._internal();
  factory NavigationService() => _instance;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // Default transition settings
  static TransitionType _defaultTransition = TransitionType.platform;
  static Duration _defaultDuration = const Duration(milliseconds: 300);

  /// Set default transition type for all navigation
  static void setDefaultTransition(TransitionType transition) {
    _defaultTransition = transition;
  }

  /// Set default duration for all transitions
  static void setDefaultDuration(Duration duration) {
    _defaultDuration = duration;
  }

  /// Get current default transition
  static TransitionType get defaultTransition => _defaultTransition;

  /// Get current default duration
  static Duration get defaultDuration => _defaultDuration;

  /// Navigate to widget with custom transition
  Future<dynamic> sailTo(
    Widget destination, {
    dynamic arguments,
    TransitionType? transition,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }

    final route = _createRoute(
      destination,
      transition: transition ?? _defaultTransition,
      duration: duration ?? _defaultDuration,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    );
    return navigatorKey.currentState!.push(route);
  }

  /// Navigate to named route with custom transition
  Future<dynamic> sailToName(
    String routeName, {
    dynamic arguments,
    TransitionType? transition,
    Duration? duration,
  }) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }

    // For named routes with custom transitions, we need to handle this differently
    if (transition != null && transition != TransitionType.platform) {
      // We'll need to create a custom route generator for this
      // For now, fall back to standard named navigation
      return navigatorKey.currentState!.pushNamed(
        routeName,
        arguments: arguments,
      );
    }

    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  /// Replace current route with widget
  Future<dynamic> swapTo(
    Widget destination, {
    dynamic arguments,
    TransitionType? transition,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }

    final route = _createRoute(
      destination,
      transition: transition ?? _defaultTransition,
      duration: duration ?? _defaultDuration,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    );
    return navigatorKey.currentState!.pushReplacement(route);
  }

  /// Replace current route with named route
  Future<dynamic> swapToName(
    String routeName, {
    dynamic arguments,
    TransitionType? transition,
    Duration? duration,
  }) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }

    return navigatorKey.currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  /// Clear stack and navigate to widget
  Future<dynamic> freshStartTo(
    Widget destination, {
    dynamic arguments,
    TransitionType? transition,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }

    final route = _createRoute(
      destination,
      transition: transition ?? _defaultTransition,
      duration: duration ?? _defaultDuration,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    );
    return navigatorKey.currentState!.pushAndRemoveUntil(
      route,
      (Route<dynamic> route) => false,
    );
  }

  /// Clear stack and navigate to named route
  Future<dynamic> freshStartToName(
    String routeName, {
    dynamic arguments,
    TransitionType? transition,
    Duration? duration,
  }) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }

    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  /// Creates appropriate route based on transition type
  Route<dynamic> _createRoute(
    Widget page, {
    required TransitionType transition,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    final effectiveDuration = duration ?? _defaultDuration;

    switch (transition) {
      case TransitionType.fade:
        return FadeRoute(
          page: page,
          duration: effectiveDuration,
        );
      case TransitionType.slideLeft:
        return SlideLeftTransition(
          page: page,
          duration: effectiveDuration,
        );
      case TransitionType.slideRight:
        return SlideRightTransition(
          page: page,
          duration: effectiveDuration,
        );
      case TransitionType.slideUp:
        return SlideUpTransition(
          page: page,
          duration: effectiveDuration,
        );
      case TransitionType.slideDown:
        return SlideDownTransition(
          page: page,
          duration: effectiveDuration,
        );
      case TransitionType.scale:
        return ScaleRoute(
          page: page,
          duration: effectiveDuration,
        );
      case TransitionType.rotation:
        return RotationRoute(
          page: page,
          duration: effectiveDuration,
        );
      case TransitionType.platform:
        return MaterialPageRoute(
          builder: (context) => page,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );
    }
  }

  /// Pops the current route off the navigation stack.
  void backtrack() {
    if (navigatorKey.currentState == null) {
      return;
    }
    navigatorKey.currentState!.pop();
  }

  /// Pops with result
  void backtrackWithResult<T extends Object?>([T? result]) {
    if (navigatorKey.currentState == null) {
      return;
    }
    navigatorKey.currentState!.pop(result);
  }

  /// Check if can pop
  bool canPop() {
    if (navigatorKey.currentState == null) {
      return false;
    }
    return navigatorKey.currentState!.canPop();
  }

  /// Pop until specific route
  void popUntil(String routeName) {
    if (navigatorKey.currentState == null) {
      return;
    }
    navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  /// Get current route name
  String? getCurrentRouteName() {
    if (navigatorKey.currentState == null) {
      return null;
    }
    return ModalRoute.of(navigatorKey.currentContext!)?.settings.name;
  }
}
