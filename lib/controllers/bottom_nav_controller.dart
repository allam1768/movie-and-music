import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // Menggunakan RxInt untuk mengawasi perubahan halaman
  var currentPage = 0.obs;

  // Method untuk mengubah halaman
  void changePage(int index) {
    currentPage.value = index;
  }
}
