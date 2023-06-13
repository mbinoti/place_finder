import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaView extends StatelessWidget {
  final LatLng coordenadas;

  MapaView(this.coordenadas);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: coordenadas,
          zoom: 10,
        ),
      ),
    );
  }
}
