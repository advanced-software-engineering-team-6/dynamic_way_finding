import 'package:dynamic_way_finding/ErrorPage.dart';
import 'package:dynamic_way_finding/RealNetworkChecker.dart';
import 'package:dynamic_way_finding/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'NetworkdCheckerTest.mocks.dart';

// Create a Mock class
// class MockNetworkChecker extends Mock implements RealNetworkChecker {}

// Annotation which generates the mockNetworkChecker.mocks.dart library
@GenerateMocks([RealNetworkChecker])
void main() {
  group('MyApp Tests', () {
    late MockRealNetworkChecker mockNetworkChecker;

    setUp(() {
      // Initialize the mock
      mockNetworkChecker = MockRealNetworkChecker();
    });

    testWidgets('should render GoogleMap when network is available',
        (WidgetTester tester) async {
      // Arrange
      when(mockNetworkChecker.hasNetworkConnection())
          .thenReturn(true); // Ensuring a boolean value is returned

      // Act
      await tester.pumpWidget(MyApp(networkChecker: mockNetworkChecker));

      expect(find.byType(MyApp), findsOneWidget);
      expect(find.byType(GoogleMap), findsOneWidget);
    });

    testWidgets('should show ErrorPage when network is unavailable',
        (WidgetTester tester) async {
      // Arrange
      when(mockNetworkChecker.hasNetworkConnection())
          .thenReturn(false); // Ensuring a boolean value is returned

      // Act
      await tester.pumpWidget(MyApp(networkChecker: mockNetworkChecker));

      // Assert
      expect(find.byType(ErrorPage), findsOneWidget);
    });
  });
}
