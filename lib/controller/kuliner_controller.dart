import 'package:belajarflutter/models/kuliner_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class KulinerController extends GetxController{

  var isLoading = false.obs;

  var kulinerModel = Rxn<KulinerModel>();

  @override
  void onInit() {
    super.onInit();
    getKuliner();
  }

  // method hit API
  Future<void> getKuliner() async{

    try {

      isLoading.value = true; // sebagai tanda di page nya muncul loading widget
      final url = Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php");

      final response = await http.get(url);

      isLoading.value = false;
      if(response.statusCode == 200){
        // kita ambil jsonnya (json array "categories") lalu simpan ke model
        kulinerModel.value = kulinerModelFromJson(response.body);
      }else{
        Get.snackbar("gagal", "cek internet connection");
      }

    } catch (e) {
      isLoading.value = false;
      Get.snackbar("gagal", e.toString());
      debugPrint("error nya $e");
    }

  }


}
