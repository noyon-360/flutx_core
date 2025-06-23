import 'package:flutter/material.dart';
import 'package:flutx_core/flutx_core.dart';

class NavigationConfig {
  static final GlobalKey<NavigatorState> navigatorKey = NavigationService().navigatorKey;
  static final List<NavigatorObserver> navigatorObservers = [RouteObserver<PageRoute>()];
}