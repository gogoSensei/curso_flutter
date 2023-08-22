import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/Providers/ui_provider.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = context.watch<UiProviders>();
    final currentIndex = uiProvider.selectedMenuOpt;
    
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) => uiProvider.selectedMenuOpt = value,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Direcciones',
        ),
      ],
    );
  }
}
