import 'package:dynamic_way_finding/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/mockito.dart';

import 'MockNetworkChecker.dart';

void main() {
  late MockNetworkChecker mockNetworkChecker;

  setUp(() {
    mockNetworkChecker = MockNetworkChecker();
  });

  testWidgets('App should run and render MyApp widget',
      (WidgetTester tester) async {
    when(mockNetworkChecker.hasNetworkConnection()).thenReturn(true);

    runApp(MyApp(networkChecker: mockNetworkChecker));

    expect(find.byType(MyApp), findsOneWidget);
  });

  testWidgets('Renders Google map', (WidgetTester tester) async {
    when(mockNetworkChecker.hasNetworkConnection()).thenReturn(true);

    await tester.pumpWidget(MyApp(networkChecker: mockNetworkChecker));

    expect(find.byType(GoogleMap), findsOneWidget);
  });
}
