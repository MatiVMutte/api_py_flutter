import 'package:prueba_api_agus/domain/entities/usuario.dart';

abstract class UsuarioDatasource {

  Future<Usuario?> getUsuario( int id );

  Future<List<Usuario>> getUsuarios();

}