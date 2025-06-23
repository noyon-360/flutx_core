import 'package:flutter/material.dart';
import 'package:flutx_core/flutx_core.dart';

import '../screens/app_size_deom.dart';
import '../screens/home_screen.dart';
import '../screens/string_extensions_demo.dart';
import '../screens/text_styles_demo.dart';
import '../screens/validators.dart';
import 'app_routes.dart';

class RouteGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      /// [Authentication Screens]
      case AppRoutes.home:
        return SlideLeftTransition(page: HomeScreen());
      case AppRoutes.appSizeDemo:
        return SlideLeftTransition(page: AppSizesDemoScreen());
      case AppRoutes.stringExtensionDemo:
        return SlideLeftTransition(page: StringExtensionsDemoScreen());
      case AppRoutes.textStyleDeom:
        return SlideLeftTransition(page: TextStylesDemoScreen());
      case AppRoutes.validator:
        return SlideLeftTransition(page: ValidatorsDemoScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(body: Center(child: Text('Route not found'))),
    );
  }
}
