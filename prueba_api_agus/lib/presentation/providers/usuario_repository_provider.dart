import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prueba_api_agus/data/datasources/usuario_datasource_impl.dart';
import 'package:prueba_api_agus/data/repositories/usuario_repository_impl.dart';

final usuarioRepositoryProvider = Provider( (ref) {

  return UsuarioRepositoryImpl( UsuarioDatasourceImpl() );

},);