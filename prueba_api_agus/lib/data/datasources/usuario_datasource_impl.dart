import 'package:dio/dio.dart';
import 'package:prueba_api_agus/data/mappers/usuario_mapper.dart';

import 'package:prueba_api_agus/domain/datasources/usuarios_datasource.dart';
import 'package:prueba_api_agus/domain/entities/usuario.dart';

class UsuarioDatasourceImpl implements UsuarioDatasource {

  final dio = Dio(BaseOptions(
    // baseUrl: 'http://127.0.0.1:8000/api',
    baseUrl: 'http://10.0.2.2:8000/api',    
  ));

  @override
  Future<Usuario?> getUsuario(int id) async {
    return null;
  }

  @override
  Future<List<Usuario>> getUsuarios() async {
    try {
      final response = await dio.get('/usuario');
      print("Respuesta del servidor: ${response.data}");

      // List<Usuario> usuarios = (response.data as List)
      //     .map((item) => Usuario.fromJson(item))
      //     .toList();

      return [];

    } catch (e) {
      throw Exception("No se pudieron cargar los datos -> ${e.toString()}");
    }
  }
  
  @override
  Future<void> addUsuario(Usuario usuario) async {
    final data = UsuarioDbMapper.usuarioEntityToDb(usuario).toJson();
    try {
      await dio.post(
        '/usuario/',
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        )
      );

      print("Se agrego el usuario correctamente");

    } catch (e) {
      throw Exception("No se pudieron cargar los datos -> ${e.toString()}");
    }
  }
  
  @override
  Future<bool> deleteUsuario(int id) async{
    try {
      final response = await dio.delete('/usuario/$id');
      print(response);
      return (response != null) ? true : false;
    } catch(e) {
      throw Exception("No se pudieron cargar los datos -> ${e.toString()}");
    }
  }
  
  @override
  Future<bool> updateUsuario(Usuario usuario) {
    // TODO: implement updateUsuario
    throw UnimplementedError();
  }

  
}
