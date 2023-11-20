import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dynamic_way_finding/main.dart';

void main() {
  testWidgets('Renders Google map', (WidgetTester tester) async {
    // 创建测试应用，并添加MyApp
    await tester.pumpWidget(const MyApp());

    // 查找GoogleMap类型的Widget
    expect(find.byType(GoogleMap), findsOneWidget);
  });
}
