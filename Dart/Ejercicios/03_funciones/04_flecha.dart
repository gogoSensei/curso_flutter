void main(List<String> args) {
  int a = 10, b = 20;
  int resultado = sumarFlecha(a, b);

  List<int> listado = [1,2,3,4,5,6,6,7,8,9];
  List<int> nuevoListado = listado.where((element) => element % 2 == 0,).toSet().toList();
  print(nuevoListado);
  print(resultado);
}

int sumar(int x, int y) {
  return x + y;
}

int sumarFlecha (int x, int y) => x + y;
