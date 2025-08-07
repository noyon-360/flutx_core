import 'package:flutter/material.dart';

import '../transitions/fade_route.dart';
import '../transitions/slide_left.dart';
import '../transitions/slide_up.dart';

enum TransitionType {
  fade,
  slideLeft,
  slideUp,
  platform, // Uses platform default
}

class NavigationService {
  // Private constructor
  NavigationService._internal();

  // Singleton instance
  static final NavigationService _instance = NavigationService._internal();
  factory NavigationService() => _instance;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// Unified navigation method - supports both String routes and Widget pages
  Future<dynamic> sailTo(
    dynamic destination, {
    dynamic arguments,
    TransitionType transition = TransitionType.platform,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }

    // Handle String route names
    if (destination is String) {
      return navigatorKey.currentState!.pushNamed(
        destination,
        arguments: arguments,
      );
    }
    
    // Handle Widget pages
    if (destination is Widget) {
      final route = _createRoute(
        destination,
        transition: transition,
        duration: duration,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
      );
      return navigatorKey.currentState!.push(route);
    }

    throw ArgumentError('Destination must be either String (route name) or Widget');
  }

  /// Unified swap method - supports both String routes and Widget pages
  Future<dynamic> swapTo(
    dynamic destination, {
    dynamic arguments,
    TransitionType transition = TransitionType.platform,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }

    // Handle String route names
    if (destination is String) {
      return navigatorKey.currentState!.pushReplacementNamed(
        destination,
        arguments: arguments,
      );
    }
    
    // Handle Widget pages
    if (destination is Widget) {
      final route = _createRoute(
        destination,
        transition: transition,
        duration: duration,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
      );
      return navigatorKey.currentState!.pushReplacement(route);
    }

    throw ArgumentError('Destination must be either String (route name) or Widget');
  }

  /// Unified fresh start method - supports both String routes and Widget pages
  Future<dynamic> freshStartTo(
    dynamic destination, {
    dynamic arguments,
    TransitionType transition = TransitionType.platform,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }

    // Handle String route names
    if (destination is String) {
      return navigatorKey.currentState!.pushNamedAndRemoveUntil(
        destination,
        (Route<dynamic> route) => false,
        arguments: arguments,
      );
    }
    
    // Handle Widget pages
    if (destination is Widget) {
      final route = _createRoute(
        destination,
        transition: transition,
        duration: duration,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
      );
      return navigatorKey.currentState!.pushAndRemoveUntil(
        route,
        (Route<dynamic> route) => false,
      );
    }

    throw ArgumentError('Destination must be either String (route name) or Widget');
  }

  /// Creates appropriate route based on transition type
  Route<dynamic> _createRoute(
    Widget page, {
    required TransitionType transition,
    Duration? duration,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    switch (transition) {
      case TransitionType.fade:
        return FadeRoute(
          page: page,
          duration: duration ?? const Duration(milliseconds: 250),
        );
      case TransitionType.slideLeft:
        return SlideLeftTransition(
          page: page,
          duration: duration ?? const Duration(milliseconds: 300),
        );
      case TransitionType.slideUp:
        return SlideUpTransition(
          page: page,
          duration: duration ?? const Duration(milliseconds: 400),
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