import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/data/models/sub_nivel_model.dart';
import 'package:notificaciones_unifront/app/data/repositorys/db_repository.dart';
import 'package:notificaciones_unifront/app/data/services/auth_service.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

class NotifGradesLogic extends GetxController {
  final _dbRepository = Get.find<DbRepository>();
  String idNivel;

  NotifGradesLogic(this.idNivel);

  SubNivelModel? _subNivelModel;

  SubNivelModel? get subNivelModel => _subNivelModel;

  @override
  void onReady() {
    _getSubNiveles();
    super.onReady();
  }

  void toSendNoti(int idGrade) {
    Get.rootDelegate.toNamed(Routes.notifSend(idNivel, idGrade.toString()));
  }

  void _getSubNiveles() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _subNivelModel = await _dbRepository.getSubNiveles(token: token, idNivel: idNivel);
      update(['subniveles']);
    } else {
      Get.rootDelegate.toNamed(Routes.login);
    }

  }
}
