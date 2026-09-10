enum AppEnvironment { dev, staging, prod }

extension AppEnvironmentX on AppEnvironment {
  String get name => switch (this) {
        AppEnvironment.dev => 'dev',
        AppEnvironment.staging => 'staging',
        AppEnvironment.prod => 'prod',
      };
}

extension AppEnvironmentResolver on AppEnvironment {
  static AppEnvironment fromDartDefine() {
    const String value = String.fromEnvironment('APP_ENV', defaultValue: 'dev');
    return switch (value) {
      'staging' => AppEnvironment.staging,
      'prod' => AppEnvironment.prod,
      _ => AppEnvironment.dev,
    };
  }
}
