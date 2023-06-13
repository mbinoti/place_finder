import 'package:flutter/material.dart';
import 'package:place_finder/controllers/mapa_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MapaController mapaController = MapaController();
  final TextEditingController cidadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seu App de Mapas',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Seu App de Mapas'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: cidadeController,
                decoration: const InputDecoration(
                  labelText: 'Digite o nome da cidade',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String nomeCidade = cidadeController.text;
                mapaController.exibirMapa(context, nomeCidade);
              },
              child: const Text('Exibir mapa'),
            ),
          ],
        ),
      ),
    );
  }
}
