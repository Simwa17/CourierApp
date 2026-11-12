import 'dart:async';

import 'package:flutter/material.dart';

import 'src/app/courier_app.dart';
import 'src/core/config/app_environment.dart';
import 'src/core/di/service_locator.dart';
import 'src/core/error/error_reporter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AppEnvironment environment = AppEnvironment.fromDartDefine();

  await configureDependencies(environment);

  FlutterError.onError = ErrorReporter.reportFlutterError;

  runZonedGuarded(
    () => runApp(CourierApp(environment: environment)),
    ErrorReporter.reportError,
  );
}
