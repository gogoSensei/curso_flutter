mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy  :::::  $texto');
  }
}

class Logger2 {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy  :::::  $texto');
  }
}

abstract class Astro with Logger {
  String? nombre;

  Astro() {
    imprimir('-- Init del Astro --');
  }

  void existo () {
    imprimir('-- SOy un ser celestial y existo');
  }
}

class Asteroide extends Astro implements Logger2, Logger {
  String? nombre;

  Asteroide (this.nombre){
    imprimir('Soy $nombre');
  }
}

void main(List<String> args) {
  final logger = new Asteroide('celestial');
  print(logger);
}