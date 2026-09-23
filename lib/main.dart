import 'package:flutter/material.dart';
// 1. Import file login_clone_page Anda (sesuaikan dengan nama file dart Anda)
import 'package:belajarflutter/pages/login_clone_page.dart'; 
import 'package:belajarflutter/pages/kalkulator_page.dart'; // Import halaman kalkulator Anda

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan pita "DEBUG"
      title: 'Aplikasi Kalkulator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // 2. Arahkan home ke class halaman kalkulator Anda
      home: KalkulatorPage(), 
    );
  }
}