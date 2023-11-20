import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dynamic_way_finding/main.dart';

void main() {
  testWidgets('App should run and render MyApp widget', (WidgetTester tester) async {
    runApp(const MyApp());

    expect(find.byType(MyApp), findsOneWidget);
  });

  testWidgets('Renders Google map', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(GoogleMap), findsOneWidget);
  });


}
