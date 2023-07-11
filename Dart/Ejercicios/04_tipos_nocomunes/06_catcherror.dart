void main(List<String> args) {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      throw 'Auxilio!, exploto esta cosa';
    }
    return 'Retorno del future';
  });

  // timeout.then((value) => print(value));
  timeout
    .then(print)
    .catchError((e) {
      print(e);
    });
  print('Fin del main');
}
