import 'package:prueba_api_agus/domain/entities/usuario.dart';

abstract class UsuarioRepository {

  Future<List<Usuario>> getUsuarios();

  Future<Usuario?> getUsuario( int id );

  Future<void> addUsuario( Usuario usuario );

  Future<bool> deleteUsuario( int id );

  Future<bool> updateUsuario( Usuario usuario );

  // TODO: SignIn, SignUp, SignOut

}