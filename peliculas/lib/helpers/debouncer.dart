import 'dart:async';
// Creditos
// https://stackoverflow.com/a/52922130/7834829

class Debouncer<T> {

  Debouncer({ 
    required this.duration, 
    this.onValue 
  });

  final Duration duration;

  void Function(T value)? onValue;

  T? _value;
  Timer? _timer;
  
  T get value => _value!;

  set value(T val) {
    _value = val;
    _timer?.cancel();
    _timer = Timer(duration, () => onValue!(_value as T));
  }

  void restartTime (String serchTerm) {
    final timer = Timer.periodic(const Duration(seconds: 3), (_) {
      _value = serchTerm as T?;
      print('aqui la ejecución');
    });

    Future.delayed(const Duration(seconds: 4)).then((value) {
      timer.cancel();
      print('aqui la cancelación');
    } );
  }
}