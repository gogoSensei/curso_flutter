import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const inicialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'listview1', name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOptions(route: 'listview2', name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list),
    MenuOptions(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOptions(route: 'card', name: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOptions(route: 'avatar', name: 'Circle avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOptions(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOptions(route: 'input', name: 'Input Screen', screen: const InputsCreens(), icon: Icons.input),
    MenuOptions(route: 'slider', name: 'Sliders and check', screen: const SliderScreen(), icon: Icons.slow_motion_video_outlined),
    MenuOptions(route: 'listviewbuilder', name: 'Infinite Scroll & Pul refresh', screen: const ListviewBuilderScreen(), icon: Icons.build_circle_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext _) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext _) => const HomeScreen(),
  //   'listview1': (BuildContext _) => const Listview1Screen(),
  //   'listview2': (BuildContext _) => const Listview2Screen(),
  //   'alert': (BuildContext _) => const AlertScreen(),
  //   'card': (BuildContext _) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // En caso de no existir la ruta
    return MaterialPageRoute(
      builder: (context) => const Listview1Screen(),
    );
  }
}
