import 'package:flutter/material.dart';
import 'package:qr_reader/Providers/db_provider.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScanModel scan = ModalRoute.of(context)?.settings.arguments as ScanModel;
    return Scaffold(
      appBar: AppBar(title: const Text('Mapa'),),
      body: Center(
        child: Text('Mapa Page ${scan.valor}'),
      ),
    );
  }
}
