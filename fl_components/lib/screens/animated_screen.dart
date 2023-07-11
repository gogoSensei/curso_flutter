import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _widh = 50;
  double _heigth = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void onChangeShape() {
    final random = Random();
    setState(() {
      _heigth = random.nextInt(300).toDouble() + 70;
      _widh = random.nextInt(300).toDouble() + 70;
      _color = Color.fromRGBO(
        random.nextInt(300),
        random.nextInt(300),
        random.nextInt(300),
        1,
      );
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _widh,
          height: _heigth,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onChangeShape,
        child: const Icon(Icons.play_circle_outline),
      ),
    );
  }
}
