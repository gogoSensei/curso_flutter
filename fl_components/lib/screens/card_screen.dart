import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const <Widget>[
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imagenUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Sharingan_triple.svg/2048px-Sharingan_triple.svg.png',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imagenUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Byakugan.svg/2048px-Byakugan.svg.png',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imagenUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Rinnegan.svg/768px-Rinnegan.svg.png',
                name: 'Rinnegan',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
