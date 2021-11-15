import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:notificaciones_unifront/app/core/utils/helpers/http/http.dart';
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

  Future<NivelModel?> getNiveles({required String token}) async {
    try {
      final result = await _http.request('niveles',
          method: HttpMethod.get, headers: {'Authorization': token});
      return NivelModel.fromJson(result.data);
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
}
