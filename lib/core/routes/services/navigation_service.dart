import 'package:flutter/material.dart';

class NavigationService {
  // Private constactor
  NavigationService._internal();

  // Singleton instance
  static final NavigationService _instance = NavigationService._internal();

  factory NavigationService() => _instance;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// Navigates to a new route by pushing it onto the navigation stack.
  Future<dynamic> sailTo(String routeName, {dynamic arguments}) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }
    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  /// Replaces the current route with a new one.
  Future<dynamic> swapTo(String routeName, {dynamic arguments}) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }
    return navigatorKey.currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  /// Clears the entire navigation stack and navigates to the specified route.
  Future<dynamic> freshStartTo(String routeName, {dynamic arguments}) {
    if (navigatorKey.currentState == null) {
      return Future.value(null);
    }
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  /// Pops the current route off the navigation stack.
  void backtrack() {
    if (navigatorKey.currentState == null) {
      return;
    }
    navigatorKey.currentState!.pop();
  }
}
