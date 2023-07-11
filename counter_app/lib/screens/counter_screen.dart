import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});


  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;

  void increase () {
    counter++;
    setState(() {});
  }

  void decrease () {
    counter--;
    setState(() {});
  }

  void cero () {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Número de clicks',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: CustomFloatingActions( increaseFn: increase, decreaseFn: decrease, ceroFn: cero,),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function ceroFn;
  const CustomFloatingActions({
    super.key, required this.increaseFn, required this.decreaseFn, required this.ceroFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(
            Icons.exposure_plus_1_outlined,
          ),
        ),
        FloatingActionButton(
          onPressed: () => ceroFn(),
          child: const Icon(
            Icons.exposure_zero,
          ),
        ),
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(
            Icons.exposure_minus_1_outlined,
          ),
        ),
      ],
    );
  }
}
