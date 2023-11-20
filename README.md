# dynamic_way_finding

"A new Flutter project."

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Run test with coverage:
Preinstall lcov
```shell
brew install lcov
```
run test with coverage and check:
```shell
flutter test --coverage && genhtml coverage/lcov.info -o coverage/html && open coverage/html/index.html
```