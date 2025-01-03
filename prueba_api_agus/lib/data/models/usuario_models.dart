class UsuarioModels {
    final int? id;
    final String name;
    final String email;
    final String password;

    UsuarioModels({
        this.id,
        required this.name,
        required this.email,
        required this.password,
    });

    factory UsuarioModels.fromJson(Map<String, dynamic> json) => UsuarioModels(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        // "id": id,
        "name": name,
        "email": email,
        "password": password,
    };
}
