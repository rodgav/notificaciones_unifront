import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:notificaciones_unifront/app/data/models/token_model.dart';

class AuthService extends GetxService {
  static AuthService get to => Get.find();
  final _getStorage = GetStorage();

  String? get jwt => _getStorage.read('jwt');

  Future<void> saveSession(TokenModel tokenModel) async {
    Map<String, dynamic> payload = Jwt.parseJwt(tokenModel.token);
    await _getStorage.write('sub', payload['sub'] ?? '');
    await _getStorage.write('correo', payload['correo'] ?? '');
    await _getStorage.write('jwt', tokenModel.token);
    await _getStorage.write(
        'createdAt',
        DateTime.fromMillisecondsSinceEpoch(payload['iat'] * 1000, isUtc: true)
            .toString());
    await _getStorage.write(
        'expiresIn',
        DateTime.fromMillisecondsSinceEpoch(payload['exp'] * 1000, isUtc: true)
            .toString());
  }

  Future<void> eraseSession() async {
    await _getStorage.erase();
  }

  Future<String?> getToken() async {
    final token = await _getStorage.read('jwt') ?? '';
    if (token != '') {
      final expiresIn = await _getStorage.read('expiresIn') ?? '';
      final expires = DateTime.parse(expiresIn);
      if (DateTime.now().isBefore(expires)) {
        return token;
      }
      //refresh token
      return null;
    } else {
      return null;
    }
  }
}
