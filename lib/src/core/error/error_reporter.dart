import 'package:flutter/foundation.dart';

class ErrorReporter {
  static void reportFlutterError(FlutterErrorDetails details) {
    FlutterError.presentError(details);
    reportError(details.exception, details.stack ?? StackTrace.current);
  }

  static void reportError(Object error, StackTrace stackTrace) {
    debugPrint('[UNHANDLED ERROR] $error');
    debugPrint(stackTrace.toString());
  }
}
