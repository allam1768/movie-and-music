import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/screens/home_page.dart';
import 'package:movie/screens/login_screen.dart';
import 'package:movie/screens/splash_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/home', page: () => MyHomePage()), // Sesuaikan dengan halaman utama
      ],
    );
  }
}
