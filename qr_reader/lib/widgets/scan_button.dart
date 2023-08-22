import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/Providers/scan_list_provider.dart';
// import 'package:qr_reader/models/scan_model.dart';
import 'package:qr_reader/utils/utils.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);
    return FloatingActionButton(
      elevation: 0,
      onPressed: () {
        // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        //                                             '#3D8BEF',
        //                                             'Cancelar',
        //                                             false,
        //                                             ScanMode.QR);
        // const barcodeScanRes = 'geo:21.082832001280053,-100.31506448808435';
        const barcodeScanRes = 'https://fernando-herrera.com';
        // scanListProvider.nuevoScan(barcodeScanRes);
        // if (barcodeScanRes == '-1') return;
        scanListProvider.nuevoScan(barcodeScanRes).then(
              (value) => launchURL(context, value),
            );
      },
      child: const Icon(Icons.filter_center_focus),
    );
  }
}
