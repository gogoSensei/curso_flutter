import 'package:flutter/material.dart';
import 'package:peliculas/helpers/time_out.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/screens/screens.dart';
import 'package:provider/provider.dart';

void main() => runApp( const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy: false,
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  final timeout = TimeOutApp();

  @override
  void initState() {
    timeout.startTimer(_navigatorKey);
    super.initState();
  }

  void handleInteraction([_]) {
    timeout.startTimer(_navigatorKey);
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerMove: handleInteraction,
      onPointerCancel: handleInteraction,
      onPointerDown: handleInteraction,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Peliculas',
        initialRoute: 'home',
        navigatorKey: _navigatorKey,
        routes: {
          'home': (_) => const HomeScreens(),
          'details': (_) => const DetailsScreens(),
        },
        theme: ThemeData.light().copyWith(
            appBarTheme: const AppBarTheme(
          color: Colors.indigo,
          elevation: 0,
        )),
      ),
    );
  }
}
