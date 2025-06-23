import 'package:flutter/material.dart';

class SlideUpTransition extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  SlideUpTransition({
    required this.page,
    this.duration = const Duration(milliseconds: 400),
  }) : super(
         pageBuilder: (context, animation, secondaryAnimation) => page,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           return SlideTransition(
             position: Tween<Offset>(
               begin: const Offset(0, 1),
               end: Offset.zero,
             ).animate(
               CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
             ),
             child: child,
           );
         },
         transitionDuration: duration,
         reverseTransitionDuration: duration,
         fullscreenDialog: true, // For modal-style screens
         opaque: false, // Allows background to show during transition
       );
}
