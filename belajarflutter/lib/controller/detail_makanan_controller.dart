import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late String namaMakanan;
  late String hargaMakanan;
  late String gambarMakanan;
  late String deskripsiMakanan;
  late int ratingMakanan;
  late String reviewMakanan;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaMakanan = arguments['namaMakanan'];
    hargaMakanan = arguments['hargaMakanan'];
    gambarMakanan = arguments['gambarMakanan'];
    deskripsiMakanan = arguments['deskripsiMakanan'];
    ratingMakanan = arguments['ratingMakanan'];
    reviewMakanan = arguments['reviewMakanan'];
  }
}