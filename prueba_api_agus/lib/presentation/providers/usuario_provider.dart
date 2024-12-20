import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prueba_api_agus/domain/entities/usuario.dart';
import 'package:prueba_api_agus/presentation/providers/usuario_repository_provider.dart';

final obtenerUsuariosProvider = StateNotifierProvider< UsuariosNotifier, List<Usuario> >( (ref) {
  
  final obtenerUsuarios = ref.watch( usuarioRepositoryProvider ).getUsuarios;

  return UsuariosNotifier(fObtenerUsuarios: obtenerUsuarios);

},);





typedef ObtenerUsuarios = Future<List<Usuario>> Function();

class UsuariosNotifier extends StateNotifier< List<Usuario> > {

  ObtenerUsuarios fObtenerUsuarios;

  UsuariosNotifier({
    required this.fObtenerUsuarios,
  }) : super( [] );

  Future<void> obtenerUsuarios() async {

    state = await fObtenerUsuarios();

  }

}