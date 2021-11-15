import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/data/models/nivel_model.dart';
import 'package:notificaciones_unifront/app/data/models/sub_nivel_model.dart';
import 'package:notificaciones_unifront/app/data/models/token_model.dart';
import 'package:notificaciones_unifront/app/data/provider/db_provider.dart';

class DbRepository {
  final _dbProvider = Get.find<DbProvider>();

  Future<TokenModel?> login(
          {required String correo, required String password}) =>
      _dbProvider.login(correo: correo, password: password);

  Future<NivelModel?> getNiveles({required String token}) =>
      _dbProvider.getNiveles(token: token);

  Future<SubNivelModel?> getSubNiveles(
          {required String token, required String idNivel}) =>
      _dbProvider.getSubNiveles(token: token, idNivel: idNivel);
}
