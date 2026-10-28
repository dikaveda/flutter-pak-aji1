import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:belajarflutter/pages/confirmreg_page.dart';
import 'package:belajarflutter/pages/list_makanan_page.dart';
import 'package:belajarflutter/pages/detail.makanan_page.dart';
import 'package:belajarflutter/pages/mainmenu.page.dart'; // atau mainmenu.page.dart
import 'package:belajarflutter/pages/menu_drawer_page.dart'; // atau menu_drawer_page.dart

class Routes {
  static const String registration = "/registration";
  static const String confirmreg = "/confirmreg";
  static const String listmakanan = "/listmakanan";
  static const String detailmakanan = "/detailmakanan";
  static const String main_menu = "/mainmenu";
  static const String menudrawer = "/menudrawer";

  static final myPages = [
    GetPage(
      name: registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: confirmreg,
      page: () => ConfirmRegPage(),
    ),
    GetPage(
      name: listmakanan,
      page: () => ListMakananPage(),
    ),
    GetPage(
      name: detailmakanan,
      page: () => DetailMakananPage(),
    ),
    GetPage(
      name: main_menu,
      page: () => MainMenuPage(), // Sesuaikan dengan nama class di file menu Anda (misal MenuPage / MainMenuPage)
    ),
    GetPage(
      name: menudrawer,
      page: () => DrawerPage(), // Sesuaikan dengan nama class di file menu Anda (misal MenuPage / MainMenuPage)
    ),  
  ];
}