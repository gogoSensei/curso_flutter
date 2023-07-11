main() {
  var a = 10;
  final b = 10;
  const c = 10;

  late double? x;
  x = 10.05;
  x = 11.05;
  print(x);

  // a = 20;
  // b = 20;
  // c = 20;
  
  // final personasFinal = ['Juan', 'Pedro', 'Fernando'];
  // const personasConst = ['Juan', 'Pedro', 'Fernando'];

  final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
  List<String> personasConst = const ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('Maria');
  // personasConst.add('Maria');
  // print(personasConst);
}