import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notif_nivels_logic.dart';

class NotifNivelsPage extends StatelessWidget {
  final logic = Get.find<NotifNivelsLogic>();

  NotifNivelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Center(child: Text('Notificaciones Niveles'),);
  }
}
