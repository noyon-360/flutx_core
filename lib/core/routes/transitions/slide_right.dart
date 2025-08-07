import 'package:flutter/material.dart';

class SlideRightTransition extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  SlideRightTransition({
    required this.page,
    this.duration = const Duration(milliseconds: 300),
  }) : super(
         pageBuilder: (context, animation, secondaryAnimation) => page,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           return SlideTransition(
             position: Tween<Offset>(
               begin: const Offset(-1, 0),
               end: Offset.zero,
             ).animate(
               CurvedAnimation(parent: animation, curve: Curves.easeOutQuart),
             ),
             child: child,
           );
         },
         transitionDuration: duration,
         reverseTransitionDuration: duration,
         opaque: true,
         barrierDismissible: false,
       );
}
