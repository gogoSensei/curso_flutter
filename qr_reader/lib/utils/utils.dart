import 'package:flutter/material.dart';
import 'package:qr_reader/Providers/db_provider.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(BuildContext context, ScanModel scan) async {
  if (scan.tipo == 'http') {
    final url = Uri.parse(scan.valor);
    if (await canLaunchUrl(url)) return;
    if (!await launchUrl(url)) {
      print('Could not launch $url');
    }
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
