import 'package:flutter/material.dart';
import 'package:belajarflutter/components/costum_textfield.dart';
import 'package:belajarflutter/components/costum_button.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 28),
          onPressed: null,
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.help_outline, color: Colors.black, size: 28),
            onPressed: null,
          ),
          SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              // Logo TikTok
              Center(
                child: Image.network(
                  'https://img.magnific.com/premium-vector/tiktok-app-icon-social-media-logo_277909-647.jpg?semt=ais_hybrid&w=740&q=80',
                  height: 50,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.music_note, size: 50, color: Colors.black);
                  },
                ),
              ),
              const SizedBox(height: 24),

              // 1. Judul Halaman
              const Text(
                'Masuk',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 32),

              // 2. Custom TextField Username / Email
              CustomTextField(
                controller: txtUsername,
                hintText: 'Email atau nama pengguna',
              ),
              const SizedBox(height: 16),

              // 3. Custom TextField Password
              CustomTextField(
                controller: txtPassword,
                hintText: 'Kata sandi',
              ),
              const SizedBox(height: 16),

              // 4. Lupa Kata Sandi
              const Text(
                'Lupa kata sandi?',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 32),

              // 5. Custom Button Masuk
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: 'Masuk',
                  onPressed: () {
                    print('Username: ${txtUsername.text}');
                    print('Password: ${txtPassword.text}');
                  },
                ),
              ),

              const Spacer(),

              // 6. Footer Layout
              const Divider(height: 1, color: Colors.black12),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun? ',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Mendaftar',
                      style: TextStyle(
                        color: Color(0xFFFE2C55),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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
  }
}