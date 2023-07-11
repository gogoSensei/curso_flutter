void main(List<String> args) {
  String nombre = 'Isidro';
  String apellido = 'Rivera';
  String nombreCompleto = '$nombre' ' ' '$apellido';
  print(nombreCompleto);
  print('Length: ${ nombreCompleto.length }');
  print('Contains: ${ nombreCompleto.contains('I', 0) }');
  print('Contains: ${ nombreCompleto.contains(RegExp('Rivera')) }');
  print('Contains: ${ nombreCompleto.endsWith('a') }');
  print('Contains: ${ nombreCompleto.padLeft(20, '...') }');

  print('Operador[]: ${ nombreCompleto[0] }');
  print('Operador*: ${ nombreCompleto * 2 }');
  print('Replace all: ${ nombreCompleto.replaceAll('r', 'x') }');
  print('Replace all: ${ nombreCompleto.replaceAll(RegExp(r'r'), 'x') }');
  print('SubString: ${ nombreCompleto.substring(0, 5) }');
  print('IndexOf: ${ nombreCompleto.indexOf(' ') }');
  print('Split: ${ nombreCompleto.split(' ') }');
  print('Split: ${nombreCompleto.substring(0, nombreCompleto.length - 1)}${ nombreCompleto.toUpperCase()[nombreCompleto.length - 1] }');
}