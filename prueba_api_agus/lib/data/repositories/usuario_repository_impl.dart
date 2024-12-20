import 'package:prueba_api_agus/data/datasources/usuario_datasource_impl.dart';
import 'package:prueba_api_agus/domain/entities/usuario.dart';
import 'package:prueba_api_agus/domain/repositories/usuarios_repository.dart';

class UsuarioRepositoryImpl extends UsuarioRepository {

  final UsuarioDatasourceImpl _usuarioDatasourceImpl;

  UsuarioRepositoryImpl(this._usuarioDatasourceImpl);

  @override
  Future<Usuario?> getUsuario(int id) async {
    return _usuarioDatasourceImpl.getUsuario(id);
  }

  @override
  Future<List<Usuario>> getUsuarios() async {
    return _usuarioDatasourceImpl.getUsuarios();
  }

}