import 'package:get/get.dart';
import 'package:belajarflutter/menu/home.page.dart';
import 'package:belajarflutter/menu/history.page.dart';
import 'package:belajarflutter/menu/profile.page.dart';

class MenuDrawerController extends GetxController {
  // Index untuk menandai menu aktif
  var currentIndex = 0.obs;

  // Daftar halaman yang akan ditampilkan
  final pages = [
    HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  // Method untuk mengganti halaman dan menutup drawer
  void changePage(int index) {
    currentIndex.value = index;
    Get.back(); // Menutup drawer setelah menu dipilih
  }
}
