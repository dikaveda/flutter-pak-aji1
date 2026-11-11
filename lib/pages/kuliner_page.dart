import 'package:belajarflutter/controller/kuliner_controller.dart';
import 'package:belajarflutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KulinerPage extends StatelessWidget {
  KulinerPage({super.key});

  final controller = Get.put(KulinerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kuliner")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        // kalau data belum ada atau kosong, tampilkan tombol coba lagi
        if (controller.kulinerModel.value == null ||
            controller.kulinerModel.value!.categories.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Data tidak ditemukan"),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: controller.getKuliner,
                  child: Text("Coba lagi"),
                ),
              ],
            ),
          );
        }

        final categories = controller.kulinerModel.value!.categories;

        return RefreshIndicator(
          onRefresh: controller.getKuliner,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return Card(
                elevation: 4,
                child: ListTile(
                  // kalau di klik, pindah ke halaman detail
                  onTap: () {
                    Get.toNamed(
                      Routes.detailkuliner,
                      arguments: {
                        'namaKuliner': category.strCategory,
                        'gambarKuliner': category.strCategoryThumb,
                        'deskripsiKuliner': category.strCategoryDescription,
                      },
                    );
                  },
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: 56,
                      height: 56,
                      child: Image.network(
                        category.strCategoryThumb,
                        fit: BoxFit.cover,
                        // kalau gambar gagal dimuat, tampilkan icon
                        errorBuilder: (context, error, stackTrace) =>
                            Icon(Icons.restaurant, size: 40),
                      ),
                    ),
                  ),
                  title: Text(
                    category.strCategory,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // deskripsinya panjang, di list cukup 2 baris saja
                  subtitle: Text(
                    category.strCategoryDescription,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
