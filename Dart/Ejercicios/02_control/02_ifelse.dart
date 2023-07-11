import 'dart:io';

main () {
  stdout.writeln('¿Cual es tu edad?');
  int edad = int.parse(stdin.readLineSync() ?? '0');
  // if (edad >= 18) {
  //   stdout.writeln('Eres mayor de edad.');
  // } else {
  //   stdout.writeln('Eres menor de edad');
  // }

  if (edad >= 21) {
    stdout.writeln('Eres ciudadano.');
  } else if (edad >= 18) {
    stdout.writeln('Eres mayor de edad.');
  } else {
    stdout.writeln('Eres menor de edad');
  }
}
