import 'package:flutter/material.dart';

/// A utility class for standardized spacing (gaps) in the UI.
/// Provides horizontal (w) and vertical (h) gaps using [SizedBox].
class Gap {
  // Vertical gaps
  static const SizedBox h4 = SizedBox(height: 4);
  static const SizedBox h8 = SizedBox(height: 8);
  static const SizedBox h12 = SizedBox(height: 12);
  static const SizedBox h16 = SizedBox(height: 16);
  static const SizedBox h20 = SizedBox(height: 20);
  static const SizedBox h24 = SizedBox(height: 24);
  static const SizedBox h32 = SizedBox(height: 32);
  static const SizedBox h40 = SizedBox(height: 40);
  static const SizedBox h48 = SizedBox(height: 48);
  static const SizedBox h56 = SizedBox(height: 56); // For AppBar or Bottom Bar
  static const SizedBox h64 = SizedBox(height: 64);

  // Horizontal gaps
  static const SizedBox w4 = SizedBox(width: 4);
  static const SizedBox w8 = SizedBox(width: 8);
  static const SizedBox w12 = SizedBox(width: 12);
  static const SizedBox w16 = SizedBox(width: 16);
  static const SizedBox w20 = SizedBox(width: 20);
  static const SizedBox w24 = SizedBox(width: 24);
  static const SizedBox w32 = SizedBox(width: 32);
  static const SizedBox w40 = SizedBox(width: 40);
  static const SizedBox w48 = SizedBox(width: 48);
  static const SizedBox w64 = SizedBox(width: 64);

  // Semantic/usage-specific gaps
  static const SizedBox bottomBarGap = h56;
}
