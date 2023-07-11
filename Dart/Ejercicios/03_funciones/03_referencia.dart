String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto;
}

Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  // Romper la referencia
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';
  mapa = { ...mapa };
  return mapa;
}

void main(List<String> args) {
  String nombre = 'Fernando';
  String nombre2 = capitalizar(nombre);
  print(nombre);
  print(nombre2);

  Map<String, String> persona = {
    'nombre': 'Tony Stark',
    'poder':'Dinero',
    'edad': '35',
  };

  Map<String, String> persona2 = capitalizarMapa(persona);
  print(persona);
  print(persona2);

}
