# CourierApp

CourierApp is a Flutter project with a maintainable baseline architecture for courier order creation and tracking.

## Prerequisites

- Flutter SDK 3.24.0+
- Dart SDK 3.3.0+

## Getting Started

```bash
flutter pub get
flutter run --dart-define=APP_ENV=dev
```

Supported environments:

- `dev`
- `staging`
- `prod`

## Project Structure

```text
lib/
  main.dart
  src/
    app/
    core/
      config/
      di/
      error/
      logging/
    data/
      repositories/
    domain/
      entities/
      repositories/
      usecases/
    presentation/
      pages/

test/
integration_test/
.github/workflows/
```

## Quality Gates

Local checks:

```bash
dart format --set-exit-if-changed .
flutter analyze
flutter test
flutter test integration_test
```

CI enforces all checks on pull requests and main branch pushes.

## Architecture Overview

- **Presentation**: UI widgets and user interactions.
- **Domain**: Entities, repository contracts, and use cases.
- **Data**: Repository implementations.
- **Core**: Dependency injection, configuration, logging, and error handling.

## Security and Maintenance

- Dependency review workflow runs on all pull requests.
- Dependabot creates weekly updates for pub packages and GitHub Actions.
- Environment values are injected via `--dart-define`; no secrets are stored in source.

## Contribution Flow

1. Create a feature branch.
2. Implement changes with tests.
3. Run all local quality checks.
4. Open a pull request and wait for CI checks to pass.
