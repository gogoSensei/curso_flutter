import 'package:flutter/foundation.dart';
import 'package:qr_reader/Providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier {
  List<ScanModel> scans = [];
  String tipoSeleccionado  = 'geo';

  Future<ScanModel> nuevoScan(String valor) async {
    final nuevoScan = ScanModel(valor: valor);
    final id = await DBProvider.db.nuevoScan(nuevoScan);

    nuevoScan.id = id;
    if (tipoSeleccionado == nuevoScan.tipo) {
      scans.add(nuevoScan);
    }
    notifyListeners();
    return nuevoScan;
  }

  cargarScans() async {
    final scansProv = await DBProvider.db.getTodosScans(null);
    scans = [...?scansProv];
    notifyListeners();
  }

  cargarScanPorTipo(String tipo) async {
    final scansProv = await DBProvider.db.getTodosScans(tipo);
    tipoSeleccionado = tipo;
    scans = [...?scansProv];
    notifyListeners();
  }

  borrarTodos() async {
    DBProvider.db.deleteAllScan();
    scans = [];
    notifyListeners();
  }

  borrarScanPorId(int i) async {
    DBProvider.db.deleteScan(i);
    cargarScanPorTipo(tipoSeleccionado);
  }
}