void main(List<String> args) {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('Tres segundos despues');
    return 'Retorno del future';
  });

  // timeout.then((value) => print(value));
  timeout.then(print);
  print('Fin del main');
}