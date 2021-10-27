import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  final logic = Get.find<HomeLogic>();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Drawer'),
                Text('Drawer'),
                Text('Drawer'),
                Text('Drawer'),
                Text('Drawer'),
              ],
            ),
          ),
          Expanded(
              child: GetRouterOutlet(
            initialRoute: Routes.notifNivels,
            key: Get.nestedKey(Routes.home),
          ))
        ],
      ),
    );
  }
}
