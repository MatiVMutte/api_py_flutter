import 'package:prueba_api_agus/data/models/usuario_models.dart';
import 'package:prueba_api_agus/domain/entities/usuario.dart';

class UsuarioDbMapper {

  static Usuario usuarioDbToEntity(UsuarioModels usuarioModel) {
    return Usuario(
      id: usuarioModel.id,
      nombre: usuarioModel.name,
      mail: usuarioModel.email,
      contrasenia: usuarioModel.password,
    );
  }

  static UsuarioModels usuarioEntityToDb(Usuario usuario) {
    return UsuarioModels(
      id: usuario.id,
      name: usuario.nombre,
      email: usuario.mail,
      password: usuario.contrasenia,
    );
  }


}