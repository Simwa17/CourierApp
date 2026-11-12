import 'package:flutter/material.dart';

import '../core/config/app_environment.dart';
import '../presentation/pages/order_tracking_page.dart';

class CourierApp extends StatelessWidget {
  const CourierApp({super.key, required this.environment});

  final AppEnvironment environment;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CourierApp (${environment.name})',
      debugShowCheckedModeBanner: false,
      home: const OrderTrackingPage(),
    );
  }
}
