import 'package:flutter/material.dart';

class RotationRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  RotationRoute({
    required this.page,
    this.duration = const Duration(milliseconds: 500),
  }) : super(
         pageBuilder: (context, animation, secondaryAnimation) => page,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           return RotationTransition(
             turns: Tween<double>(
               begin: 0.0,
               end: 1.0,
             ).animate(
               CurvedAnimation(parent: animation, curve: Curves.easeInOut),
             ),
             child: ScaleTransition(
               scale: Tween<double>(
                 begin: 0.0,
                 end: 1.0,
               ).animate(
                 CurvedAnimation(parent: animation, curve: Curves.easeOutBack),
               ),
               child: child,
             ),
           );
         },
         transitionDuration: duration,
         reverseTransitionDuration: duration,
         opaque: false,
       );
}
