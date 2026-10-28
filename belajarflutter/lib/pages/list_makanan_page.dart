import 'package:flutter/material.dart';
import 'package:belajarflutter/controller/list_makanan_controller.dart';
import 'package:belajarflutter/routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.makananList.length,
            itemBuilder: (context, index) {
              final makanan = controller.makananList[index];
              return Dismissible(
                key: ValueKey(makanan.nama),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.delete, color: Colors.white),
                ),
                onDismissed: (direction) {
                  controller.makananList.removeAt(index);
                },
                child: InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes.detailmakanan,
                      arguments: {
                        'namaMakanan': makanan.nama,
                        'deskripsiMakanan': makanan.deskripsi,
                        'gambarMakanan': makanan.gambar,
                        'hargaMakanan': makanan.harga,
                        'ratingMakanan': 5.0,
                        'reviewMakanan': "Enak dan lezat!",
                      },
                    );
                  },
                  child: Card(
                    elevation: 10,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          makanan.nama!,
                          style: TextStyle(fontSize: 40),
                        ),
                        subtitle: Text(
                          "Rp. " + makanan.harga!,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}