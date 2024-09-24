import 'package:get/get.dart';
import 'package:movie/controllers/music_controller.dart'; // Sesuaikan dengan controller yang kamu miliki
import 'package:movie/controllers/login_controller.dart'; // Sesuaikan dengan controller yang kamu miliki

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // Inisialisasi controller yang diperlukan di sini
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MusicController>(() => MusicController());
  }
}
