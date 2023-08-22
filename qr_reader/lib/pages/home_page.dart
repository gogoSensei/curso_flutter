import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/Providers/scan_list_provider.dart';
import 'package:qr_reader/Providers/ui_provider.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/pages/mapas_page.dart';
import 'package:qr_reader/widgets/custom_navigator_bar.dart';
import 'package:qr_reader/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);
    final uiProvider = context.watch<UiProviders>();
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(
            onPressed: () {
              scanListProvider.borrarTodos();
              uiProvider.selectedMenuOpt = 0;
            },
            icon: const Icon(Icons.delete_forever),
          )
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody();

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProviders>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    // TEMPORAL LEER BASE DE DATOS
    // final temScan = ScanModel(valor: 'http://fernandoherrera.com');
    // DBProvider.db.nuevoScan(temScan);
    // DBProvider.db.deleteAllScan().then(print);

    final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 0:
        scanListProvider.cargarScanPorTipo('geo');
        return const MapasPage();
      case 1:
        scanListProvider.cargarScanPorTipo('http');
        return const DireccionesPage();
      default:
        scanListProvider.cargarScanPorTipo('geo');

        return const MapasPage();

    }
  }
}
