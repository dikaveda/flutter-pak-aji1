import 'package:flutter/material.dart';
import 'package:belajarflutter/controller/detail_makanan_controller.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Makanan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 180,
                    child: Image.network(
                      controller.gambarMakanan,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 80),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  controller.namaMakanan,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      controller.ratingMakanan.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Text(
                  "Harga",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Rp. " + controller.hargaMakanan,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Deskripsi Makanan",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  controller.deskripsiMakanan,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 