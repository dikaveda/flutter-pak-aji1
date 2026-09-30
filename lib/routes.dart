import 'package:get/get.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:belajarflutter/pages/confirmreg_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmreg = "/confirmreg";

  static final myPages = [
    GetPage(
      name: registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: confirmreg,
      page: () => ConfirmRegPage(),
    ),
  ];
}