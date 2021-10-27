part of 'app_pages.dart';

abstract class Routes {
  static const login = _Paths.login;
  static const home = _Paths.home;
  static const notifNivels = home + _Paths.notifNivels;

  static String notifGrades(String idNivel) => '$home/notifGrades/$idNivel';

  static String notifSend(String idNivel, String idGrade) =>
      '$home/notifSend/$idNivel/$idGrade';
  static const studsNivels = home + _Paths.studsNivels;

  static String studsGrades(String idNivel) => '$home/studsGrades/$idNivel';

  static String studsProxies(String idNivel, String idGrade) =>
      '$home/studsProxies/$idNivel';
  static const proxies = home + _Paths.proxies;
  static const proxsNew = home + _Paths.proxsNew;
}

abstract class _Paths {
  static const login = '/login';
  static const home = '/home';
  static const notifNivels = '/notifNivels';
  static const notifGrades = '/notifGrades/:idNivel';
  static const notifSend = '/notifSend/:idNivel/:idGrade';
  static const studsNivels = '/studsNivels';
  static const studsGrades = '/studsGrades/:idNivel';
  static const studsProxies = '/studsProxies/:idNivel/:idGrade';
  static const proxies = '/proxies';
  static const proxsNew = '/proxsNew';
}
