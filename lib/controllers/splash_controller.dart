import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    // Setelah 3 detik, cek status login
    await Future.delayed(Duration(seconds: 3), () {
      if (isLoggedIn) {
        Get.offNamed('/home'); // Jika sudah login, arahkan ke home screen
      } else {
        Get.offNamed('/login'); // Jika belum login, arahkan ke login screen
      }
    });
  }
}
