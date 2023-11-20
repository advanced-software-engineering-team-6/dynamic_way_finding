import 'package:dynamic_way_finding/ErrorPage.dart';
import 'package:dynamic_way_finding/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'MockNetworkChecker.dart';

void main() {
  late MockNetworkChecker mockNetworkChecker;

  setUp(() {
    mockNetworkChecker = MockNetworkChecker();
  });

  testWidgets('should show error page given network status is false',
      (WidgetTester tester) async {
    when(mockNetworkChecker.hasNetworkConnection()).thenReturn(false);

    await tester.pumpWidget(MyApp(networkChecker: mockNetworkChecker));

    expect(find.byType(ErrorPage), findsOneWidget);
  });
}
