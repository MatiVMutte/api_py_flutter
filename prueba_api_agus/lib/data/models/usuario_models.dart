class UsuarioModels {
    final int id;
    final String nome;
    final String email;
    final String password;

    UsuarioModels({
        required this.id,
        required this.nome,
        required this.email,
        required this.password,
    });

    factory UsuarioModels.fromJson(Map<String, dynamic> json) => UsuarioModels(
        id: json["id"],
        nome: json["nome"],
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "email": email,
        "password": password,
    };
}
