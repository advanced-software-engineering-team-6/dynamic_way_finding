import 'package:dynamic_way_finding/NetworkChecker.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'ErrorPage.dart';

void main() => runApp(MyApp(
      networkChecker: RealNetworkChecker(),
    ));

class MyApp extends StatefulWidget {
  final NetworkChecker networkChecker;

  const MyApp({super.key, required this.networkChecker});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      home: widget.networkChecker.hasNetworkConnection()
          ? Scaffold(
              appBar: AppBar(
                title: const Text('Maps Sample App'),
                elevation: 2,
              ),
              body: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            )
          : ErrorPage(),
    );
  }
}
