import 'package:flutter/material.dart';

class BasicDesign extends StatelessWidget {
  const BasicDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagens
          Image(
            image: AssetImage('assets/landscape.jpeg'),
          ),
          // Titulo
          Title(),
          Compartir(),
          Parrafo()
        ],
      ),
    );
  }
}

class Parrafo extends StatelessWidget {
  const Parrafo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(25),
      child: Text('Aute magna anim consectetur laborum minim do enim nostrud adipisicing in sunt. Proident commodo elit ullamco mollit consequat. Culpa elit irure id deserunt veniam occaecat minim tempor laborum consectetur exercitation. Ex tempor adipisicing velit sunt dolore nostrud esse elit culpa ut incididunt amet ipsum veniam.'),
    );
  }
}

class Compartir extends StatelessWidget {
  const Compartir({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomButton(icon: Icons.call, text: 'CALL',),
          _CustomButton(icon: Icons.near_me, text: 'ROUTE',),
          _CustomButton(icon: Icons.share, text: 'SHARE',),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const _CustomButton({
    required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        const SizedBox(height: 10,),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campgroud',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg,  Swinterland',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Expanded(child: SizedBox()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text(
            '41',
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }
}
