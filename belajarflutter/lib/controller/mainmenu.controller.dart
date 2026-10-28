import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:belajarflutter/menu/home.page.dart';
import 'package:belajarflutter/menu/history.page.dart';
import 'package:belajarflutter/menu/profile.page.dart';

class MainMenuController extends GetxController {
  // 1. Ubah Rxint menjadi RxInt (atau cukup 'var selectedIndex = 0.obs;')
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  // 2. Tambahkan kata kunci 'get' sebelum listPages
  List<Widget> get listPages => [
        HomePage(),
        HistoryPage(),
        ProfilePage(),
      ];
}