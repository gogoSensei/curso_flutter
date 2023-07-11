import 'dart:async';

void main(List<String> args) {
  final streamController = StreamController<String>.broadcast();
  streamController.stream.listen(
    (event) => print('despegando! $event'),
    onError: (err) => print('Error: $err'),
    onDone: () => print('Mision completa'),
    cancelOnError: true
  );

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.addError('Houston, tenemos un problema!');
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');
  streamController.sink.close();

  print('Fin del main');
}