import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

class HomeLogic extends GetxController {
  String _selectDrawer = 'Inicio';

  String get selectDrawer => _selectDrawer;

  void onSelectDrawer(String select, bool nav) {
    _selectDrawer = select;
    update(['drawer']);
    if (nav) {
      switch (select) {
        case 'Inicio':
          Get.rootDelegate.toNamed(Routes.inicio);
          break;
        case 'Notificaciones':
          Get.rootDelegate.toNamed(Routes.notifNivels);
          break;
        case 'Estudiantes':
          Get.rootDelegate.toNamed(Routes.studsNivels);
          break;
        case 'Apoderados':
          Get.rootDelegate.toNamed(Routes.proxies);
          break;
      }
    }
  }
}
