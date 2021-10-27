import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/modules/home/home_binding.dart';
import 'package:notificaciones_unifront/app/modules/home/home_view.dart';
import 'package:notificaciones_unifront/app/modules/login/login_binding.dart';
import 'package:notificaciones_unifront/app/modules/login/login_view.dart';
import 'package:notificaciones_unifront/app/modules/notif_grades/notif_grades_binding.dart';
import 'package:notificaciones_unifront/app/modules/notif_grades/notif_grades_view.dart';
import 'package:notificaciones_unifront/app/modules/notif_nivels/notif_nivels_binding.dart';
import 'package:notificaciones_unifront/app/modules/notif_nivels/notif_nivels_view.dart';
import 'package:notificaciones_unifront/app/modules/notif_send/notif_send_binding.dart';
import 'package:notificaciones_unifront/app/modules/notif_send/notif_send_view.dart';
import 'package:notificaciones_unifront/app/modules/proxies/proxies_binding.dart';
import 'package:notificaciones_unifront/app/modules/proxies/proxies_view.dart';
import 'package:notificaciones_unifront/app/modules/proxs_new/proxs_new_binding.dart';
import 'package:notificaciones_unifront/app/modules/proxs_new/proxs_new_view.dart';
import 'package:notificaciones_unifront/app/modules/root/root_binding.dart';
import 'package:notificaciones_unifront/app/modules/root/root_view.dart';
import 'package:notificaciones_unifront/app/modules/studs_grades/studs_grades_binding.dart';
import 'package:notificaciones_unifront/app/modules/studs_grades/studs_grades_view.dart';
import 'package:notificaciones_unifront/app/modules/studs_nivels/studs_nivels_binding.dart';
import 'package:notificaciones_unifront/app/modules/studs_nivels/studs_nivels_view.dart';
import 'package:notificaciones_unifront/app/modules/studs_proxies/studs_proxies_binding.dart';
import 'package:notificaciones_unifront/app/modules/studs_proxies/studs_proxies_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;
  static final routes = [
    GetPage(
        name: '/',
        page: () => RootPage(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
              preventDuplicates: true,
              name: _Paths.login,
              page: () => LoginPage(),
              binding: LoginBinding()),
          GetPage(
              preventDuplicates: true,
              name: _Paths.home,
              page: () => HomePage(),
              binding: HomeBinding(),
              children: [
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.notifNivels,
                    page: () => NotifNivelsPage(),
                    binding: NotifNivelsBinding()),
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.notifGrades,
                    page: () => NotifGradesPage(),
                    binding: NotifGradesBinding()),
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.notifSend,
                    page: () => NotifSendPage(),
                    binding: NotifSendBinding()),
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.studsNivels,
                    page: () => StudsNivelsPage(),
                    binding: StudsNivelsBinding()),
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.studsGrades,
                    page: () => StudsGradesPage(),
                    binding: StudsGradesBinding()),
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.studsProxies,
                    page: () => StudsProxiesPage(),
                    binding: StudsProxiesBinding()),
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.proxies,
                    page: () => ProxiesPage(),
                    binding: ProxiesBinding()),
                GetPage(
                    preventDuplicates: true,
                    name: _Paths.proxsNew,
                    page: () => ProxsNewPage(),
                    binding: ProxsNewBinding()),
              ])
        ])
  ];
}
