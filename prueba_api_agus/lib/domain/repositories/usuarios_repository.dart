import 'package:prueba_api_agus/domain/entities/usuario.dart';

abstract class UsuarioRepository {

  Future<List<Usuario>> getUsuarios();

  Future<Usuario?> getUsuario( int id );

}