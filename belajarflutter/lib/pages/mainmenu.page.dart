import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/controller/mainmenu.controller.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});
  Widget build(BuildContext context) {
    final MainMenuController mainMenuController = Get.put(MainMenuController());

    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: mainMenuController.selectedIndex.value,
          children: mainMenuController.listPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: mainMenuController.changePage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    ); // Penutup untuk return Obx
  }
}