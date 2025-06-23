// go.dart
import 'navigation_service.dart';

class Go {
  static Future<dynamic> sailTo(String routeName, {dynamic arguments}) {
    return NavigationService().sailTo(routeName, arguments: arguments);
  }

  static Future<dynamic> swapTo(String routeName, {dynamic arguments}) {
    return NavigationService().swapTo(routeName, arguments: arguments);
  }

  static Future<dynamic> freshStartTo(String routeName, {dynamic arguments}) {
    return NavigationService().freshStartTo(routeName, arguments: arguments);
  }

  static void backtrack() {
    NavigationService().backtrack();
  }
}
