main () {
  // Operador de asinación
  int? a;
  int? b;

  // b ??= 20; // Asignar solo si es nulo
  // print(b);
  int c = 23;
  String resp = c > 25 ? 'C es mayor a 25' : 'C es menor a 25';
  // print(resp);

  int d = b ?? a ?? 100;
  // print(d);

  // Operadores relacionales
  // Todes retornan un valor booleano
  /**
   * > Mayor que
   * < Menor que
   * >= Mayor o igual que
   * <= Menor o igual que
   * 
   * == Revisar si dos objetos son iguales
   * != Revisar si dos objetos son diferentes
   * 
   */

  String persona1 = 'Fernando';
  String persona2 = 'Alberto';
  // print(persona1 == persona2);
  // print(persona1 != persona2);

  int x = 20;
  int y = 30;

  // print(x > y); // false
  // print(x < y); // true
  // print(x >= y); // false
  // print(x <= y); // true

  // Operador de tipo
  int i = 10;
  String  j  = '10';
  print( i is int );
  print(j is! int);
}