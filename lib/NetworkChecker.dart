abstract class NetworkChecker {
  bool hasNetworkConnection();
}

class RealNetworkChecker implements NetworkChecker {
  @override
  bool hasNetworkConnection() {
    return true;
  }
}
