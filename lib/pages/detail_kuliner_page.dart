import 'package:belajarflutter/controller/detail_kuliner_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailKulinerPage extends StatelessWidget {
  DetailKulinerPage({super.key});

  final controller = Get.put(DetailKulinerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Kuliner")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // gambar makanan
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.network(
                controller.gambarKuliner,
                fit: BoxFit.contain,
                // kalau gambar gagal dimuat, tampilkan icon
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.restaurant, size: 80),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.namaKuliner,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Deskripsi",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    controller.deskripsiKuliner,
                    style: TextStyle(fontSize: 14, height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
