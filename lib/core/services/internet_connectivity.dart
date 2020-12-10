import 'dart:async';

import 'package:connectivity/connectivity.dart';

class InternetConnectivity {
  Stream<ConnectivityResult> connectivityChanges() {
    final Connectivity connectivity = Connectivity();
    return connectivity.onConnectivityChanged;
  }
}
