import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // Deklarasikan parameter yang dibutuhkan
  final TextEditingController txtController;
  final String hintText;

  const CustomTextField({
    super.key,
    required this.txtController,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        controller: txtController, // Menghubungkan controller
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}