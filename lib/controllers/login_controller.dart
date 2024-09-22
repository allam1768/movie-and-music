import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  final String _correctUsername = 'allam';
  final String _correctPassword = 'allam';

  Future<void> login() async {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username == _correctUsername && password == _correctPassword) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      Get.offNamed('/home');
    } else {
      Get.snackbar(
        'Login Gagal',
        'Username atau password salah',
        backgroundColor: Color(0xFFFF204E),
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
