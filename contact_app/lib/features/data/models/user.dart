class User {
  final String nombre;
  final String numero;
  final String email;
  final String imagen;

  User({
    required this.nombre,
    required this.numero,
    required this.email,
    required this.imagen,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      nombre: json['nombre'] as String,
      numero: json['numero'] as String,
      email: json['email'] as String,
      imagen: json['imagen'] as String,
    );
  }
}
