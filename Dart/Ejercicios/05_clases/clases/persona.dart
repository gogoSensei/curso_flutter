class Persona {
  // Campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Hola soy una propiedad privada';

  // Get y Set
  String get bio {
    return _bio.toUpperCase();
  }

  set bio (String valor) {
    _bio = valor;
  }

  // Constructor
  // Persona (int edad, String nombre) {
  //   this.edad = edad;
  //   this.nombre = nombre;
  // }

  Persona({
    required this.edad, 
    required this.nombre
  });

  Persona.persona30(this.nombre) {
    this.edad = 30;
  }

  Persona.persona40(nombre) {
    this.nombre = nombre;
    this.edad = 40;
  }

  //Metodos
  @override
  String toString() {
    return '$nombre $edad $_bio';    
  }
}
