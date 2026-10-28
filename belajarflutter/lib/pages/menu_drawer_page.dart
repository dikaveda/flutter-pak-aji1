import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/controller/menu_drawer_controller.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainMenuController controller = Get.put(MainMenuController());

    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          switch (controller.currentIndex.value) {
            case 0:
              return const Text('Home');
            case 1:
              return const Text('History');
            case 2:
              return const Text('Profile');
            default:
              return const Text('App');
          }
        }),
      ),
      // Drawer / Sidebar Menu
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                controller.changePage(0);
                Get.back(); // Menutup drawer setelah menu dipilih
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () {
                controller.changePage(1);
                Get.back(); // Menutup drawer setelah menu dipilih
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                controller.changePage(2);
                Get.back(); // Menutup drawer setelah menu dipilih
              },
            ),
          ],
        ),
      ),
      // Menampilkan halaman yang aktif secara reaktif
      body: Obx(() => controller.pages[controller.currentIndex.value]),
    );
  }
}