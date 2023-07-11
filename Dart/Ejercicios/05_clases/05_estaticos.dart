class Herramienta {
  static const List<String> listado = ['Martillo', 'Llave inglesa', 'Desarmador'];
  static void imprimirListado() => listado.forEach(print);
}
void main(List<String> args) {
  Herramienta.listado.forEach(print);
  Herramienta.imprimirListado();
}