import 'package:flutter/material.dart';
import 'navigation_service.dart';

class FlutxNavigation {
  /// Injects navigatorKey and navigatorObservers using the spread operator
  static Map<String, dynamic> config() {
    return {
      'navigatorKey': NavigationService().navigatorKey,
      'navigatorObservers': <NavigatorObserver>[RouteObserver<PageRoute>()],
    };
  }

  /// Configure default transition and duration
  static void configure({
    TransitionType? defaultTransition,
    Duration? defaultDuration,
  }) {
    if (defaultTransition != null) {
      NavigationService.setDefaultTransition(defaultTransition);
    }
    if (defaultDuration != null) {
      NavigationService.setDefaultDuration(defaultDuration);
    }
  }
}
