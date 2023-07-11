void main(List<String> args) {
  // int volument = 1;
  Audio volumen = Audio.bajo;
  switch (volumen) {
    case Audio.bajo:
      print('Volumen Bajo');
      break;
    case Audio.medio:
      print('Volumen Medio');
      break;
    case Audio.alto:
      print('Volumen Alto');
      break;
    default:
  }
}

enum Audio {
  bajo,
  medio,
  alto
}
