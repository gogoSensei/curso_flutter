void main(List<String> args) {
  List<int> lista = [1,2,3,4,5];
  List<int>? lista2;
  List<int> lista3 = [3,1,2,15,-10];
  List<String> nombres = ['Tony', 'Peter'];

  print('Length: ${ lista.length }');
  print('First: ${ lista[0] }');
  print('First: ${ lista.first }');
  print('last: ${ lista.last }');
  print('Is Empty: ${ lista.isEmpty }');
  print('Is Empty: ${ lista2?.isEmpty }');
  print('As Map: ${ lista.asMap() }');
  Map listamapa = nombres.asMap();
  print('Nombre mapa:  ${listamapa}');
  print('Nombre mapa:  ${listamapa[1]}');
  print('index of:  ${nombres.indexOf('Peter')}');

  int mayor = lista.indexWhere((element) => element % 2 == 0);
  print('Index where mayor: $mayor');
  print('Remove: ${nombres.remove('Peter')}');
  print('Remove: ${nombres}');
  lista.shuffle();
  print('Shuffle: $lista');
  lista3.sort();
  print('Sort: $lista3');
  print('Reverse: ${lista.reversed.toList()}');
  nombres.forEach((element) { 
    print(element.toUpperCase());
  });
  print('$nombres');
  final newList = nombres.map((e) => e.toUpperCase()).toList();
  print(newList);
}