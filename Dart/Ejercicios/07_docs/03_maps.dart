void main(List<String> args) {
  final persona = {
    'nombre': 'Isidro',
    'apellido': 'Rivera',
    'edad': 34
  };

  final direccion = {
    'ciudad': 'San jose',
    'pais': 'Mexico'
  };

  print('Persona: $persona');
  print('Length: ${ persona.length }');
  print('Keys: ${ persona.keys }');
  print('Values: ${ persona.values }');
  print('Values: ${ persona.values }');
  persona.addAll(direccion);
  print('Add all: $persona');
  persona.remove('pais');
  print('Remove: $persona');
  // persona.removeWhere((key, value) => key != 'nombre');
  print('Remove Where: $persona');
  persona.forEach((key, value) {
    print('$key $value');
  });

  final newPerosna = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });
  print(newPerosna);
}