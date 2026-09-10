import 'package:courier_app/src/app/courier_app.dart';
import 'package:courier_app/src/core/config/app_environment.dart';
import 'package:courier_app/src/core/di/service_locator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('renders order tracking UI', (WidgetTester tester) async {
    await configureDependencies(AppEnvironment.dev);

    await tester.pumpWidget(
      const CourierApp(environment: AppEnvironment.dev),
    );

    expect(find.text('Courier Orders'), findsOneWidget);
    expect(find.text('Create order'), findsOneWidget);
  });
}
