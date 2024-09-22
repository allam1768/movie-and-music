import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';


class SplashScreen extends StatelessWidget {
  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 23, 51, 1),
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 104, // Atur ukuran lebar gambar
          height: 100, // Atur ukuran tinggi gambar
          fit: BoxFit.cover, // Sesuaikan tampilan gambar
        ),
      ),
    );
  }
}
