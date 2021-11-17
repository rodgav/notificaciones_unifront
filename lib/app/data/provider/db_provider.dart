import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:notificaciones_unifront/app/core/utils/helpers/http/http.dart';
import 'package:notificaciones_unifront/app/data/models/apoderado_model.dart';
import 'package:notificaciones_unifront/app/data/models/estudiante_model.dart';
import 'package:notificaciones_unifront/app/data/models/nivel_model.dart';
import 'package:notificaciones_unifront/app/data/models/sub_nivel_model.dart';
import 'package:notificaciones_unifront/app/data/models/token_model.dart';

class DbProvider {
  final Http _http;

  DbProvider(this._http);

  Future<TokenModel?> login(
      {required String correo, required String password}) async {
    try {
      final json = {'correo': correo, 'password': password};
      final result = await _http.request('loginAdmin',
          method: HttpMethod.post, body: {'json': jsonEncode(json)});
      debugPrint('result ${result.data}');
      return TokenModel.fromJson(result.data);
    } catch (_) {
      return null;
    }
  }

  Future<TokenModel?> refresh({required String token}) async {
    try {
      final result = await _http.request('refresh',
          method: HttpMethod.post, headers: {'Authorization': token});
      return TokenModel.fromJson(result.data);
    } catch (_) {
      return null;
    }
  }

  Future<NivelModel?> getNiveles({required String token}) async {
    try {
      final result = await _http.request('niveles',
          method: HttpMethod.get, headers: {'Authorization': token});
      return NivelModel.fromJson(result.data);
    } catch (_) {
      return null;
    }
  }

  Future<Nivele?> getNivel(
      {required String token, required String idNivel}) async {
    try {
      final result = await _http.request('nivel',
          method: HttpMethod.get,
          headers: {'Authorization': token},
          queryParameters: {'idNivel': idNivel});
      final data = result.data as Map<String, dynamic>;
      debugPrint('data ${data['nivel']}');
      return Nivele.fromJson(data['nivel']);
    } catch (_) {
      return null;
    }
  }

  Future<SubNivelModel?> getSubNiveles(
      {required String token, required String idNivel}) async {
    try {
      final result = await _http.request('subniveles',
          method: HttpMethod.get,
          headers: {'Authorization': token},
          queryParameters: {'idNivel': idNivel});
      return SubNivelModel.fromJson(result.data);
    } catch (_) {
      return null;
    }
  }

  Future<SubNivele?> getSubNivel(
      {required String token, required String idSubNivel}) async {
    try {
      final result = await _http.request('subnivel',
          method: HttpMethod.get,
          headers: {'Authorization': token},
          queryParameters: {'idSubNivel': idSubNivel});
      final data = result.data as Map<String, dynamic>;
      debugPrint('data ${data['sub_nivel']}');
      return SubNivele.fromJson(data['sub_nivel']);
    } catch (_) {
      return null;
    }
  }

  Future<EstudianteModel?> getEstudiantesNoApoderado(
      {required String token, required String idSubNivel}) async {
    try {
      final result = await _http.request('estudiantesNoApoderado',
          method: HttpMethod.get,
          headers: {'Authorization': token},
          queryParameters: {'idSubNivel': idSubNivel});
      return EstudianteModel.fromJson(result.data);
    } catch (_) {
      return null;
    }
  }

  Future<EstudianteModel?> getEstudiantesApoderado(
      {required String token, required String idSubNivel}) async {
    try {
      final result = await _http.request('estudiantesApoderado',
          method: HttpMethod.get,
          headers: {'Authorization': token},
          queryParameters: {'idSubNivel': idSubNivel});
      return EstudianteModel.fromJson(result.data);
    } catch (_) {
      return null;
    }
  }

  Future<Apoderado?> createApoderado(
      {required String token,
      required String name,
      required String lastname,
      required String correo}) async {
    try {
      final json = {'name': name, 'lastname': lastname, 'correo': correo};
      final result = await _http.request('apoderado',
          method: HttpMethod.post,
          headers: {'Authorization': token},
          body: {'json': jsonEncode(json)});
      debugPrint('result ${result.data}');
      final data = result.data as Map<String, dynamic>;
      debugPrint('apoderado ${data['apoderado']}');
      return Apoderado.fromJson(data['apoderado']);
    } catch (_) {
      return null;
    }
  }

  Future<ApoderadoModel?> getApoderadoLastName(
      {required String token, required String lastName}) async {
    try {
      final result = await _http.request('apoderadosName',
          method: HttpMethod.get,
          headers: {'Authorization': token},
          queryParameters: {'lastName': lastName});
      return ApoderadoModel.fromJson(result.data);
    } catch (_) {
      return null;
    }
  }

  Future<ApoderadoModel?> getApoderado({required String token}) async {
    try {
      final result = await _http.request('apoderados',
          method: HttpMethod.get, headers: {'Authorization': token});
      return ApoderadoModel.fromJson(result.data);
    } catch (_) {
      return null;
    }
  }
}
