import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final List<String> options = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: <Widget>[
          ...options.map((e) {
            return ListTile(
                leading: const Icon(Icons.access_time_sharp),
                title: Text(e),
                trailing: const Icon(Icons.arrow_forward_outlined),
              );
          }).toList()
        ],
      ),
    );
  }
}
