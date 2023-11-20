import 'package:dynamic_way_finding/NetworkChecker.dart';
import 'package:mockito/mockito.dart';

class MockNetworkChecker extends Mock implements NetworkChecker {
  @override
  bool hasNetworkConnection() => false;
}
