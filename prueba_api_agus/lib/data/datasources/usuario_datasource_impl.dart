import 'package:dio/dio.dart';

import 'package:prueba_api_agus/domain/datasources/usuarios_datasource.dart';
import 'package:prueba_api_agus/domain/entities/usuario.dart';

class UsuarioDatasourceImpl implements UsuarioDatasource {

  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://localhost:8000/api',
    )
  );

  @override
  Future<Usuario?> getUsuario(int id) async {
    return null;
  }

  @override
  Future<List<Usuario>> getUsuarios() async {
    try {
      
      final response = await dio.get( '/usuario' );
      print( response.data );

      return [];

    } catch (e) {
      throw Exception("No se pudieron cargar los datos -> $e");
    }

    
  }
  
}