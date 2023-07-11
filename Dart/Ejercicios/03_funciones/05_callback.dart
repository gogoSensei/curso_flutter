void main(List<String> args) {
  obtenerUsuario('100', (Map<String, String> persona) {
    print(persona);
  });
}

void obtenerUsuario (String id, Function callback) {
  Map<String, String> usuario = {
    'id': id,
    'nombre': 'Isidro',
  };
  callback(usuario);
}
