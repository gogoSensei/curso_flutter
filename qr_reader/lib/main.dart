import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/Providers/scan_list_provider.dart';
import 'package:qr_reader/Providers/ui_provider.dart';
import 'package:qr_reader/pages/home_page.dart';
import 'package:qr_reader/pages/mapa_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UiProviders(),
        ),
        ChangeNotifierProvider(
          create: (_) => ScanListProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomePage(),
          'mapa': (context) => const MapaPage()
        },
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            primaryColorLight: Colors.deepPurple,
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.deepPurple,
            )),
      ),
    );
  }
}
