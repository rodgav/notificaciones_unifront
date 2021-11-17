import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/data/models/apoderado_model.dart';
import 'package:notificaciones_unifront/app/data/models/estudiante_model.dart';
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

  Future<TokenModel?> refresh({required String token}) =>
      _dbProvider.refresh(token: token);

  Future<SubNivele?> getSubNivel(
          {required String token, required String idSubNivel}) =>
      _dbProvider.getSubNivel(token: token, idSubNivel: idSubNivel);

  Future<Nivele?> getNivel({required String token, required String idNivel}) =>
      _dbProvider.getNivel(token: token, idNivel: idNivel);

  Future<EstudianteModel?> getEstudiantesNoApoderado(
          {required String token, required String idSubNivel}) =>
      _dbProvider.getEstudiantesNoApoderado(
          token: token, idSubNivel: idSubNivel);

  Future<EstudianteModel?> getEstudiantesApoderado(
          {required String token, required String idSubNivel}) =>
      _dbProvider.getEstudiantesApoderado(token: token, idSubNivel: idSubNivel);

  Future<Apoderado?> createApoderado(
          {required String token,
          required String name,
          required String lastname,
          required String correo}) =>
      _dbProvider.createApoderado(
          token: token, name: name, lastname: lastname, correo: correo);

  Future<ApoderadoModel?> getApoderadoLastName(
          {required String token, required String lastName}) =>
      _dbProvider.getApoderadoLastName(token: token, lastName: lastName);

  Future<ApoderadoModel?> getApoderado({required String token}) =>
      _dbProvider.getApoderado(token: token);
}
