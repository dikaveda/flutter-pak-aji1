import 'package:flutter/material.dart';
import 'package:belajarflutter/components/costum_textfield.dart';
import 'package:belajarflutter/controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("kalkulator")),
      body: Column(
        children: [
          CustomTextField(controller: txtAngka1,hintText: "Masukkan Angka 1",),
          CustomTextField(controller: txtAngka2,hintText: "Masukkan Angka 2",),
          ElevatedButton(
            onPressed: () {
              // panggil method tambah di controller
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.tambah(angka1, angka2);
            },
            child: Text("Tambah"),  
          ),
          ElevatedButton(
            onPressed: () {
              // panggil method kurang di controller
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.kurang(angka1, angka2);
            },
            child: Text("Kurang"),  
          ),
          ElevatedButton(
            onPressed: () {
              // panggil method kali di controller
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.kali(angka1, angka2);
            },
            child: Text("Kali"),  
          ),
          ElevatedButton(
            onPressed: () {
              // panggil method bagi di controller
              int angka1 = int.parse(txtAngka1.text);
              int angka2 = int.parse(txtAngka2.text);
              controller.bagi(angka1, angka2);
            },
            child: Text("Bagi"),  
          ),
          Obx(
            () => Text(
              controller.hasil.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}