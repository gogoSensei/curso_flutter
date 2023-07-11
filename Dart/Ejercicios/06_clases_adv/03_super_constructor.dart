class Persona {
  String? nombre;
  int? edad;

  Persona(this.nombre, this.edad);

  void imprirNombre() => print('$nombre - $edad');
}

class Cliente extends Persona {
  String? direccion;
  List? ordenes;

  // Cliente(super.nombre, super.edad);
  Cliente(int edadActual, String nombreActual)
    : super(nombreActual, edadActual);
}

void main(List<String> args) {
  final yo = new Cliente(34, 'Isidro');
  print(yo);
}