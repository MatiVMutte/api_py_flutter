class Usuario {
  final String nombre;
  final String mail;
  final String contrasenia;

  Usuario({
    required this.nombre,
    required this.mail,
    required this.contrasenia,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(      
      nombre: json['nombre'],
      mail: json['mail'],
      contrasenia: json['contrasenia'],
    );
  }
}
