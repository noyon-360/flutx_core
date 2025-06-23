import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  FadeRoute({
    required this.page,
    this.duration = const Duration(milliseconds: 250),
  }) : super(
         pageBuilder: (context, animation, secondaryAnimation) => page,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           return FadeTransition(
             opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
             child: child,
           );
         },
         transitionDuration: duration,
         reverseTransitionDuration: duration,
         opaque: false, // Important for proper fade effect
       );
}
