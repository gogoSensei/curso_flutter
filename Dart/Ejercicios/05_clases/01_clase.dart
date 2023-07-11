import 'clases/persona.dart';

void main(List<String> args) {
  final persona = new Persona(edad:34,  nombre: 'Isidro');
  final persona2 = new Persona.persona30('Isidro');
  persona.bio = 'Nacio en Guanajuato';
  print(persona.bio);
  print(persona2);
}
