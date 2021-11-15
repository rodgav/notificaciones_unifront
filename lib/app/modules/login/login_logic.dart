import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/data/repositorys/db_repository.dart';
import 'package:notificaciones_unifront/app/data/services/auth_service.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

class LoginLogic extends GetxController {
  final _dbRepository = Get.find<DbRepository>();
  final TextEditingController correoCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void toHome() async {
    if (formKey.currentState!.validate()) {
      final tokenModel = await _dbRepository.login(
          correo: correoCtrl.text.trim(), password: passwordCtrl.text.trim());
      if (tokenModel != null) {
        await AuthService.to.saveSession(tokenModel);
        Get.rootDelegate.toNamed(Routes.home);
      } else {
        _snackBar(Colors.red, 'Error', 'Usuario y contraseña incorrectos');
      }
    }
  }

  @override
  void onReady() {
    correoCtrl.text='prueba@gmail.com';
    passwordCtrl.text='12345678';
    super.onReady();
  }

  void _snackBar(Color color, String title, String body) {
    Get.snackbar(
      title,
      body,
      colorText: color,
      snackPosition: SnackPosition.BOTTOM,
      isDismissible: true,
      dismissDirection: SnackDismissDirection.HORIZONTAL,
      forwardAnimationCurve: Curves.easeOutBack,
      margin: const EdgeInsets.all(15),
    );
  }

  validateEmail(String? value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern as String);
    return (!regex.hasMatch(value ?? '')) ? 'Ingrese su correo' : null;
  }

  isNotEmpty(String? value) {
    if (value != null) if (value.isNotEmpty) return null;
    return 'Ingre su contraseña';
  }
}
