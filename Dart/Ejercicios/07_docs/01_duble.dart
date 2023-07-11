void main(List<String> args) {
  double numero = 3.1416;
  double infinito = double.infinity;

  print('firma: ${ numero.sign } :: $numero');
  print('isFinite: ${ numero.isFinite } :: $numero');
  print('isFinite: ${ infinito.isFinite } :: $infinito');
  print('ABS: ${ numero.abs() } :: $numero');
  print('ceil: ${ numero.ceil() } :: $numero');
  // print('ABS: ${ infinito.ceil() } :: $numero');
  print('ceil to double: ${ numero.ceilToDouble() } :: $numero');
  print('clamp: ${ numero.clamp(1, 3) } :: $numero');
}