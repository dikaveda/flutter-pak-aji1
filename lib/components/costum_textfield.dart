import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Wajib di-import untuk WhitelistingTextInputFormatter/FilteringTextInputFormatter

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool isNumberOnly; // Flag untuk mengaktifkan pemblokiran huruf

  const CustomTextField({
    super.key, 
    required this.controller, 
    required this.hintText,
    this.keyboardType = TextInputType.number,
    this.isNumberOnly = true, // Default hanya boleh input angka
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: isNumberOnly
          ? [
              // Mengizinkan angka dan titik (.) untuk desimal
              FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
            ]
          : null,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}