void saludar(String? mensaje, [ String nombre = '<Inserta nombre>', int edad =18 ]) {
  print('$mensaje $nombre - $edad');
}

void saludar2 ( String mensaje, { required String nombre, int veces = 10 }) {
  print('Saludar2: $mensaje $nombre - $veces');
}

void main(List<String> args) {
  saludar('Hola');
  saludar2('Hola', nombre: 'mensje');
}