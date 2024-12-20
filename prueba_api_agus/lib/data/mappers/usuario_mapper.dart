import 'package:prueba_api_agus/data/models/usuario_models.dart';
import 'package:prueba_api_agus/domain/entities/usuario.dart';

class UsuarioDbMapper {

  static Usuario usuarioDbToEntity(UsuarioModels usuarioModel) {
    return Usuario(
      nombre: usuarioModel.nome,
      mail: usuarioModel.email,
      contrasenia: usuarioModel.password,
    );
  }

}