import 'package:get/get.dart';

class MusicController extends GetxController {
  // Observable variable untuk pencarian
  var searchQuery = ''.obs;

  // Data dummy untuk Recently Played dan For You
  var recentlyPlayed = [
    {'image': 'assets/images/atas.png', 'title': 'Lagu 1'},
    {'image': 'assets/images/atas.png', 'title': 'Lagu 2'},
    {'image': 'assets/images/atas.png', 'title': 'Lagu 3'},
    {'image': 'assets/images/atas.png', 'title': 'Lagu 4'},
    {'image': 'assets/images/atas.png', 'title': 'Lagu 5'},
  ].obs;

  var forYou = [
    {'image': 'assets/images/Music.png', 'band': 'Band 1', 'song': 'Lagu A'},
    {'image': 'assets/images/Music.png', 'band': 'Band 2', 'song': 'Lagu B'},
    {'image': 'assets/images/Music.png', 'band': 'Band 3', 'song': 'Lagu C'},
    {'image': 'assets/images/Music.png', 'band': 'Band 4', 'song': 'Lagu D'},
  ].obs;

  // Method untuk mengupdate query pencarian
  void updateSearchQuery(String query) {
    searchQuery.value = query.toLowerCase();
  }
}
