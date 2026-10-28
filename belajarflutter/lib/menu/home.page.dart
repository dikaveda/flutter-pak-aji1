import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/controller/data_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Game"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dataController.listData.length,
              itemBuilder: (context, index) {
                final makanan = dataController.listData[index];

                return InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            makanan.imageUrl,
                            height: 120,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  makanan.namaMakanan,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Rp ${makanan.hargaMakanan}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}