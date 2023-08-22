import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/Providers/scan_list_provider.dart';
import 'package:qr_reader/utils/utils.dart';

class ScanTiles extends StatelessWidget {
  const ScanTiles({super.key});

  @override
  Widget build(BuildContext context) {
    final scansProvider = Provider.of<ScanListProvider>(context);
    final scans = scansProvider.scans;
    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, i) => Dismissible(
        key: UniqueKey(),
        background: Container(
          color: Colors.red,
        ),
        onDismissed: (direction) {
          scansProvider.borrarScanPorId(scans[i].id ?? 0);
        },
        child: ListTile(
          leading: scansProvider.tipoSeleccionado == 'http'
              ? Icon(
                  Icons.home_outlined,
                  color: Theme.of(context).primaryColor,
                )
              : Icon(
                  Icons.map,
                  color: Theme.of(context).primaryColor,
                ),
          title: Text(scans[i].valor),
          subtitle: Text(scans[i].id.toString()),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.grey,
          ),
          onTap: () => launchURL(context, scans[i]),
        ),
      ),
    );
  }
}
