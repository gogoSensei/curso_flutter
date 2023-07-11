import 'dart:async';
import 'package:flutter/material.dart';

class TimeOutApp {
  Timer? _timer;

  void startTimer(GlobalKey<NavigatorState> navigatorKey) {
    if (_timer != null) {
      _timer?.cancel();
    }

    //Sets the timer to 300 seconds, after which the callback logs the user out
    _timer = Timer(const Duration(seconds: 300), () {
      _timer?.cancel();
      _timer = null;
      navigatorKey.currentState!.pushNamed('home');
    });
  }
}
