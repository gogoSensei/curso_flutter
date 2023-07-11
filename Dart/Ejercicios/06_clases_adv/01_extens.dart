class Veiculo {
  bool encendido = false;
  void encender () {
    encendido = true;
    print('Veicuo encendido');
  }

  void apagar () {
    encendido = false;
    print('Veiculoapagado');
  }
}

class Carro extends Veiculo {
  int kilometraje = 0;
}

void main(List<String> args) {
  final ford = new Carro();
  ford.encender();
  ford.apagar();
}