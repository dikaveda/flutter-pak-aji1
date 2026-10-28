import 'package:belajarflutter/models/data_model.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  RxList<dataModel> listData = RxList<dataModel>([
    dataModel(
      namaMakanan: "Louis Vuitton",
      hargaMakanan: "15.000.000",
      deskripsi: "Kaos monogram ikonik dengan bahan katun premium.",
      imageUrl: "https://images.unsplash.com/photo-1521572267360-ee0c2909d518",
      rating: 5,
      review: "Mewah",
    ),
    dataModel(
      namaMakanan: "Gucci",
      hargaMakanan: "12.000.000",
      deskripsi: "Hoodie gaya street-style dengan logo bordir khas.",
      imageUrl: "https://images.unsplash.com/photo-1556905055-8f358a7a47b2",
      rating: 5,
      review: "Keren banget",
    ),
    dataModel(
      namaMakanan: "Balenciaga",
      hargaMakanan: "9.500.000",
      deskripsi: "Kaos oversize dengan gaya modern dan minimalis.",
      imageUrl: "https://images.unsplash.com/photo-1503342217505-b0a15ec3261c",
      rating: 4,
      review: "Trendy",
    ),
    dataModel(
      namaMakanan: "Dior",
      hargaMakanan: "18.000.000",
      deskripsi: "Jaket eksklusif dengan potong elagan dan material kelas atas.",
      imageUrl: "https://images.unsplash.com/photo-1544441893-675973e31985",
      rating: 5,
      review: "Sangat elegan",
    ),
    dataModel(
      namaMakanan: "Prada",
      hargaMakanan: "11.000.000",
      deskripsi: "Kemeja nilon klasik dengan logo segitiga khas Prada.",
      imageUrl: "https://images.unsplash.com/photo-1618354691373-d851c5c3a990",
      rating: 4,
      review: "Simpel tapi berkelas",
    ),
  ]);
}