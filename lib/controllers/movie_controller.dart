import 'package:get/get.dart';

class MovieController extends GetxController {
  // Bisa menambahkan logika di sini seperti pengelolaan film atau favorite status
  var isFavorite = false.obs; // Mengelola status favorit sebagai contoh

  void toggleFavorite() {
    isFavorite.value = !isFavorite.value;
  }
}
