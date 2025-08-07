import 'package:flutter/material.dart';

class SlideDownTransition extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  SlideDownTransition({
    required this.page,
    this.duration = const Duration(milliseconds: 400),
  }) : super(
         pageBuilder: (context, animation, secondaryAnimation) => page,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           return SlideTransition(
             position: Tween<Offset>(
               begin: const Offset(0, -1),
               end: Offset.zero,
             ).animate(
               CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
             ),
             child: child,
           );
         },
         transitionDuration: duration,
         reverseTransitionDuration: duration,
         opaque: false,
       );
}
