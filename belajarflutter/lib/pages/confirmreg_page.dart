import 'package:flutter/material.dart';
import 'package:belajarflutter/controller/confirmreg_controller.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Registration"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama: ${controller.nama}",
              style: const TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Email: ${controller.email}",
              style: const TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Jenis Kelamin: ${controller.jenisKelamin}",
              style: const TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Hobi: ${controller.hobi}",
              style: const TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Oke"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}