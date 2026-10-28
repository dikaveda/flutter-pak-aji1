import 'package:flutter/material.dart';
import 'package:belajarflutter/components/costum_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome to Application $statusLogin",
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 62, 4, 223),
              fontStyle: FontStyle.italic,
            ),
          ),
          
          // Username pakai CustomTextField
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextField(
              controller: txtUsername, // Sesuaikan dengan properti 'controller'
              hintText: "Input username", // Sesuaikan dengan properti 'hintText'
            ),
          ),
          
          // Password juga pakai CustomTextField
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextField(
              controller: txtPassword,
              hintText: "Input password",
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    String username = txtUsername.text;
                    String password = txtPassword.text;
                    if (username == "admin" && password == "admin") {
                      print("sukses login");
                      statusLogin = "admin";
                    } else {
                      print("gagal login");
                      statusLogin = "failed";
                    }
                  });
                },
                child: const Text("Login"),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Register"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}