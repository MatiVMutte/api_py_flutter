import 'package:prueba_api_agus/data/datasources/usuario_datasource_impl.dart';
import 'package:prueba_api_agus/data/repositories/usuario_repository_impl.dart';
import 'package:riverpod/riverpod.dart';

final usuarioRepositoryProvider = Provider( (ref) {

  return UsuarioRepositoryImpl( UsuarioDatasourceImpl() );

},);