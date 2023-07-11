import 'dart:io';
main () {
  // imprimir información en terminal
  stdout.writeln('¿Cual es tu nombre?');

  // Leer información
  String nombre = stdin.readLineSync() ?? 'no hay valor';
  stdout.writeln('Tu nombre: $nombre');
  
}
