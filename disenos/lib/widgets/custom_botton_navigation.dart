import 'package:flutter/material.dart';

class CustomBottonNavigation extends StatefulWidget {
  const CustomBottonNavigation({super.key});

  @override
  State<CustomBottonNavigation> createState() => _CustomBottonNavigationState();
}

class _CustomBottonNavigationState extends State<CustomBottonNavigation> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: _index,
      onTap: (value) {
        _index = value;
        setState(() {});
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined), label: 'Calendario'),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined), label: 'Gráfica'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'Usuarios'),
      ],
    );
  }
}
