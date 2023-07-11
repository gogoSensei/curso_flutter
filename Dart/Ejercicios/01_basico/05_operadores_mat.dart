/**
 * Un operador es un simbolo que le dice al compilador
 * que debe de  realizar ua tarea
 * matemática, relacional o lógica
 * y debe de producir un resulado
 * 
 */
main () {
  int a = 10 + 5; // + 15
  a = 20 - 10;    // - 10
  a = 10 * 2;     // * 20

  double b = 10 / 2; // / 5
  b = 10.0 % 3; // % 1 sobrante de divición
  b = -b;       // -expr Esusado para cambiar lvalor de la expr

  int c = 10 ~/ 3;  // ~/ Divicion solo resultado entero

  int d = 1;
  d++;          //  ++ 2
  d--;          //  -- 1

  d += 2;       // += 3
  d -+ 2;       //  

}
