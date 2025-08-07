import 'package:flutter/material.dart';

class ScaleRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  ScaleRoute({
    required this.page,
    this.duration = const Duration(milliseconds: 300),
  }) : super(
         pageBuilder: (context, animation, secondaryAnimation) => page,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           return ScaleTransition(
             scale: Tween<double>(
               begin: 0.0,
               end: 1.0,
             ).animate(
               CurvedAnimation(parent: animation, curve: Curves.easeOutBack),
             ),
             child: child,
           );
         },
         transitionDuration: duration,
         reverseTransitionDuration: duration,
         opaque: false,
       );
}
