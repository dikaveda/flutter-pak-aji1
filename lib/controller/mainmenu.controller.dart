import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:belajarflutter/menu/home.page.dart';
import 'package:belajarflutter/menu/history.page.dart';
import 'package:belajarflutter/menu/profile.page.dart';
import 'package:belajarflutter/pages/kuliner_page.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  // dibuat sekali saja supaya halaman tidak dibuat ulang tiap ganti tab
  final List<Widget> listPages = [
    HomePage(),
    KulinerPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];
}
