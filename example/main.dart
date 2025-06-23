import 'package:flutter/material.dart';
import 'package:flutx_core/core/routes/config/navigation_config.dart';

import 'routes/app_routes.dart';
import 'routes/route_generate.dart.dart';

void main() {
  runApp(const PackageShowcaseApp());
}

class PackageShowcaseApp extends StatelessWidget {
  const PackageShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Packages Showcase',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      initialRoute: AppRoutes.home,
      onGenerateRoute: RouteGenerate.generateRoute,
      navigatorKey: NavigationConfig.navigatorKey,
      navigatorObservers: NavigationConfig.navigatorObservers,
    );
  }
}
