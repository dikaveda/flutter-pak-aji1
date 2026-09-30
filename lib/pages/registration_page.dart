import 'package:flutter/material.dart';
import 'package:belajarflutter/components/custom_textfield1.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/routes.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // 1. Controller untuk Text Input
  final TextEditingController txtNama = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();

  // 2. Variable State untuk Widget Tambahan
  String jenisKelamin = "Laki-Laki";
  String hobi = "Membaca";
  bool setujuSyarat = false;

  // List pilihan untuk Dropdown
  final List<String> listHobi = ["Membaca", "Olahraga", "Coding", "Traveling"];

  @override
  void dispose() {
    // Selalu hapus controller dari memori saat halaman ditutup
    txtNama.dispose();
    txtEmail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Input Nama ---
            CustomTextField(
              txtController: txtNama,
              hintText: "Input Nama",
            ),
            const SizedBox(height: 12),

            // --- Input Email ---
            CustomTextField(
              txtController: txtEmail,
              hintText: "Input Email",
            ),
            const SizedBox(height: 16),

            // --- Widget Jenis Kelamin (Radio Button) ---
            const Text(
              "Jenis Kelamin:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text("Laki-Laki"),
                    value: "Laki-Laki",
                    groupValue: jenisKelamin,
                    onChanged: (value) {
                      setState(() {
                        jenisKelamin = value!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text("Perempuan"),
                    value: "Perempuan",
                    groupValue: jenisKelamin,
                    onChanged: (value) {
                      setState(() {
                        jenisKelamin = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // --- Widget Hobi (Dropdown) ---
            const Text(
              "Hobi:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: hobi,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
              items: listHobi.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  hobi = newValue!;
                });
              },
            ),
            const SizedBox(height: 12),

            // --- Widget Persetujuan (Checkbox) ---
            CheckboxListTile(
              title: const Text("Saya menyetujui syarat dan ketentuan"),
              value: setujuSyarat,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                setState(() {
                  setujuSyarat = value ?? false;
                });
              },
            ),
            const SizedBox(height: 20),

            // --- Tombol Submit ---
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  // Validasi sederhana jika Checkbox belum dicentang
                  if (!setujuSyarat) {
                    Get.snackbar(
                      "Peringatan",
                      "Anda harus menyetujui syarat & ketentuan!",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }

                  // Kirim semua data melalui GetX arguments
                  Get.toNamed(
                    Routes.confirmreg,
                    arguments: {
                      'name': txtNama.text,
                      'email': txtEmail.text,
                      'jenis_kelamin': jenisKelamin,
                      'hobi': hobi,
                    },
                  );
                },
                child: const Text("Send"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}