import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

class NotifGradesLogic extends GetxController {
  String idNivel;

  NotifGradesLogic(this.idNivel);

  void toSendNoti(int idGrade) {
    Get.rootDelegate.toNamed(Routes.notifSend(idNivel, idGrade.toString()));
  }
}
