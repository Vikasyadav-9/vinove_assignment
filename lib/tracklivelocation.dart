import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatelessWidget {
  final LatLng _initialPosition = const LatLng(26.944002, -80.928138); // Example: San Francisco

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Google Map'),
        ),
        body: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 12,
            ),
            ),
        );
    }
}