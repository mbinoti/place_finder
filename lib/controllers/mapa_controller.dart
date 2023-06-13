import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_finder/models/cidade.dart';
import 'package:place_finder/views/mapa_view.dart';

class MapaController {
  void exibirMapa(BuildContext context, String nomeCidade) {
    // Aqui você pode utilizar uma API de geocodificação para obter as coordenadas da cidade com base no nome

    // Suponha que você já tenha obtido as coordenadas
    LatLng coordenadas = LatLng(-22.9068, -43.1729);

    Cidade cidade = Cidade(nomeCidade);
    MapaView mapaView = MapaView(coordenadas);

    // Agora você pode exibir a visualização do mapa
    // Por exemplo, usando Navigator para navegar para a página do mapa
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => mapaView),
    );
  }
}
