import 'app_environment.dart';

class AppConfig {
  const AppConfig({required this.environment, required this.apiBaseUrl});

  final AppEnvironment environment;
  final String apiBaseUrl;

  factory AppConfig.fromEnvironment(AppEnvironment environment) {
    return switch (environment) {
      AppEnvironment.dev => const AppConfig(
          environment: AppEnvironment.dev,
          apiBaseUrl: 'https://dev-api.courier.local',
        ),
      AppEnvironment.staging => const AppConfig(
          environment: AppEnvironment.staging,
          apiBaseUrl: 'https://staging-api.courier.local',
        ),
      AppEnvironment.prod => const AppConfig(
          environment: AppEnvironment.prod,
          apiBaseUrl: 'https://api.courier.local',
        ),
    };
  }
}
