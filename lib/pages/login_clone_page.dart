import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Inisialisasi controller menggunakan Get.put
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background putih bersih ala clean UI
      appBar: AppBar(
        title: const Text('Login Page'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
         child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // Judul ala aplikasi modern
              const Text(
                "Welcome Back! 👋",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Silakan masuk untuk melanjutkan",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),

              // Field Input Username
              TextField(
                controller: controller.txtUsername,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Masukkan username kamu',
                  prefixIcon: const Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[50],
                ),
              ),
              const SizedBox(height: 16),

              // Field Input Password
              TextField(
                controller: controller.txtPassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukkan password kamu',
                  prefixIcon: const Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[50],
                ),
              ),
              const SizedBox(height: 32),
  
              // Tombol Login / Loading State ala Obx
              SizedBox(
                width: double.infinity, // Tombol melebar penuh ke samping
                height: 50,
                child: Obx(() {
                  if (controller.isLoading.value) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ElevatedButton(
                      onPressed: () {
                        controller.login();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, // Warna tombol tegas ala modern UI
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}