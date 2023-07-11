abstract class Veiculo {
  bool encendido = false;
  void encender () {
    encendido = true;
    print('Veicuo encendido');
  }

  void apagar () {
    encendido = false;
    print('Veiculoapagado');
  }

  bool revisarMotor();
}

class Carro extends Veiculo {
  int kilometraje = 0;

  @override
  bool revisarMotor () {
    print('Motor OK');
    return true;
  }
}

void main(List<String> args) {
  final ford = new Carro();
  ford.encender();
  ford.apagar();
  ford.revisarMotor();
}
