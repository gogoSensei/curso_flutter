import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/scroll_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'scroll_screens',
      routes: {
        'basic_desingn': (_) => const BasicDesign(),
        'scroll_screens': (_) => const ScrollScreen(),
      },
    );
  }
}

