import 'package:get/get.dart';
import 'package:belajarflutter/pages/login_clone_page.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:belajarflutter/pages/confirmreg_page.dart';
import 'package:belajarflutter/pages/list_makanan_page.dart';
import 'package:belajarflutter/pages/detail.makanan_page.dart';
import 'package:belajarflutter/pages/mainmenu.page.dart';
import 'package:belajarflutter/pages/menu_drawer_page.dart';
import 'package:belajarflutter/pages/kalkulator_page.dart';
import 'package:belajarflutter/pages/kuliner_page.dart';
import 'package:belajarflutter/pages/detail_kuliner_page.dart';

class Routes {
  static const String login = "/login";
  static const String registration = "/registration";
  static const String confirmreg = "/confirmreg";
  static const String listmakanan = "/listmakanan";
  static const String detailmakanan = "/detailmakanan";
  static const String mainMenu = "/mainmenu";
  static const String menudrawer = "/menudrawer";
  static const String kuliner = "/kuliner";
  static const String detailkuliner = "/detailkuliner";
  static const String kalkulator = "/kalkulator";

  static final myPages = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmreg, page: () => ConfirmRegPage()),
    GetPage(name: listmakanan, page: () => ListMakananPage()),
    GetPage(name: detailmakanan, page: () => DetailMakananPage()),
    GetPage(name: mainMenu, page: () => const MainMenuPage()),
    GetPage(name: menudrawer, page: () => const DrawerPage()),
    GetPage(name: kuliner, page: () => KulinerPage()),
    GetPage(name: detailkuliner, page: () => DetailKulinerPage()),
    GetPage(name: kalkulator,page: () => KalkulatorPage()),
  ];
}
