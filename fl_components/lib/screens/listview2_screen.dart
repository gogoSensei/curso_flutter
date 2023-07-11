import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final List<String> options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2')
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.access_time_sharp),
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_outlined),
            onTap: () {
              // final game = options[index];
              
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
