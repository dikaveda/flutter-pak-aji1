import 'package:get/get.dart';

class DetailKulinerController extends GetxController {
  late String namaKuliner;
  late String gambarKuliner;
  late String deskripsiKuliner;

  @override
  void onInit() {
    super.onInit();
    // ambil data yang dikirim dari halaman list kuliner
    final arguments = Get.arguments;
    namaKuliner = arguments['namaKuliner'];
    gambarKuliner = arguments['gambarKuliner'];
    deskripsiKuliner = arguments['deskripsiKuliner'];
  }
}
