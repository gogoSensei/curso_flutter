main() {
  // ========== Números
  int a = 10;
  double b = 5.5;

  int? c;

  int _a = 30;
  double $b = 40;

  double resultado = _a + $b;
  // print(resultado);
  // ========== Strings
  String nombre = 'Tony';
  String nombre2 = "Tony";
  String nombre3 = "O'Connor";
  String apellido = 'Stark';

  String nombreCompleto = '$nombre $apellido';

  String multilinea = '''
Hola mundo
¿Como estas?
$nombreCompleto
O'Connor
''';
  // print(multilinea);
  // ========== Boolean
  bool isActive = true;
  bool isNotActive = !isActive;
  // print(isActive);

  // ========== Lists
  // List<String> villanosDeprecated = new List();
  List<String> villanos = ['lex', 'Red Skull', 'Doom'];
  villanos.add('duende verde');
  villanos.add('duende verde');
  villanos.add('duende verde');
  villanos.add('duende verde');
  villanos.add('duende verde');

  // print(villanos);
  //  convertir list a set
  Set<String> villanosSet = villanos.toSet();
  // Convertir de set a lista
  // print(villanosSet.toList());
  // ========== Lists
  Set<String> villanos2 = {'lex', 'Red Skull', 'Doom'};
  villanos2.add('duende verde');
  villanos2.add('duende verde');
  villanos2.add('duende verde');
  villanos2.add('duende verde');
  villanos2.add('duende verde');
  // print(villanos2);

  // ========== Maps
  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y dinero',
    'nivel': 9000,
  };
  // print(ironman['poder']);

  Map<String, dynamic> capitan = new Map();
  capitan.addAll({
    'nombre': 'Steve', 
    'poder': 'Super fuerza', 
    'nivel': 5000
  });
  // capitan.addAll(ironman);
  print(capitan);
}
