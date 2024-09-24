import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/screens/Bottom_nav.dart';
import 'package:movie/screens/login_screen.dart';
import 'package:movie/screens/splash_screen.dart';
import 'Bindings/bindings.dart';

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
        GetPage(
          name: '/splash',
          page: () => SplashScreen(),
          binding: SplashBinding(), // Tambahkan binding untuk splash
        ),
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
          binding: LoginBinding(), // Tambahkan binding untuk login
        ),
        GetPage(
          name: '/home',
          page: () => MyHomePage(),
          binding: HomeBinding(), // Tambahkan binding untuk home
        ),
      ],
    );
  }
}
