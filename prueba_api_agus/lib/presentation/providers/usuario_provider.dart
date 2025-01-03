import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prueba_api_agus/data/repositories/usuario_repository_impl.dart';
import 'package:prueba_api_agus/domain/entities/usuario.dart';
import 'package:prueba_api_agus/presentation/providers/usuario_repository_provider.dart';

final obtenerUsuariosProvider = StateNotifierProvider< UsuariosNotifier, List<Usuario> >( (ref) {
  
  final proveedor = ref.watch( usuarioRepositoryProvider );

  return UsuariosNotifier(proveedor: proveedor);

},);





class UsuariosNotifier extends StateNotifier< List<Usuario> > {

  UsuarioRepositoryImpl proveedor;

  UsuariosNotifier({
    required this.proveedor,
  }) : super( [] );

  Future<List<Usuario>> obtenerUsuarios() async {

    return state = await proveedor.getUsuarios();

  }

  Future<void> agregarUsuario(Usuario usuario) async {

    proveedor.addUsuario(usuario);

  }

  Future<void> eliminarUsuario(int id) async {

    proveedor.deleteUsuario(id);

  }

}