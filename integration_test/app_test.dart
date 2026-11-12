import 'package:courier_app/src/app/courier_app.dart';
import 'package:courier_app/src/core/config/app_environment.dart';
import 'package:courier_app/src/core/di/service_locator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('create and lookup order flow', (WidgetTester tester) async {
    await configureDependencies(AppEnvironment.dev);
    await tester.pumpWidget(const CourierApp(environment: AppEnvironment.dev));

    await tester.enterText(find.byKey(const Key('recipientField')), 'Bob');
    await tester.enterText(find.byKey(const Key('addressField')), 'Market Road');
    await tester.tap(find.byKey(const Key('createOrderButton')));
    await tester.pumpAndSettle();

    expect(find.textContaining('created'), findsOneWidget);

    await tester.tap(find.byKey(const Key('lookupOrderButton')));
    await tester.pumpAndSettle();

    expect(find.textContaining('Order loaded'), findsOneWidget);
  });
}
