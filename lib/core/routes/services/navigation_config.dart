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
}
