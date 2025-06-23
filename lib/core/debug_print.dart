import 'package:flutter/foundation.dart';

class DPrint {
  static void log(Object? message) {
    if (kDebugMode) {
      // Only prints in debug mode
      print('🐞 DEBUG: $message');
    }
  }

  static void info(Object? message) {
    if (kDebugMode) {
      print('ℹ️ INFO: $message');
    }
  }

  static void warn(Object? message) {
    if (kDebugMode) {
      print('⚠️ WARNING: $message');
    }
  }

  static void error(Object? message) {
    if (kDebugMode) {
      print('❌ ERROR: $message');
    }
  }
}
