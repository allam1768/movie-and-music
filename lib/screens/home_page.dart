import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bottom_nav_controller.dart';
import 'movie_screen.dart';
import 'music_screen.dart';
import 'profile_screen.dart';
import 'package:dot_curved_bottom_nav/dot_curved_bottom_nav.dart'; // Pastikan ini tersedia

class MyHomePage extends StatelessWidget {
  final BottomNavController _bottomNavController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001733), // Latar belakang Scaffold
      body: Obx(() {
        return _getPage(_bottomNavController.currentPage.value);
      }),
      bottomNavigationBar: Obx(() {
        return DotCurvedBottomNav(
          scrollController: ScrollController(),
          hideOnScroll: true,
          indicatorColor: _getIndicatorColor(_bottomNavController.currentPage.value),
          backgroundColor: Colors.black,
          animationDuration: const Duration(milliseconds: 1000),
          animationCurve: Curves.ease,
          selectedIndex: _bottomNavController.currentPage.value,
          indicatorSize: 5,
          borderRadius: 30,
          height: 75,
          onTap: (index) {
            _bottomNavController.changePage(index);
          },
          items: [
            Icon(
              Icons.movie,
              color: _bottomNavController.currentPage.value == 0 ? Colors.blue : Colors.white,
            ),
            Icon(
              Icons.music_note,
              color: _bottomNavController.currentPage.value == 1 ? Colors.red : Colors.white,
            ),
            Icon(
              Icons.person,
              color: _bottomNavController.currentPage.value == 2 ? Colors.green : Colors.white,
            ),
          ],
        );
      }),
    );
  }

  Widget _getPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return MovieScreen();
      case 1:
        return MusicScreen();
      case 2:
        return ProfileScreen();
      default:
        return MovieScreen();
    }
  }

  Color _getIndicatorColor(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Colors.blue;
      case 1:
        return Colors.red;
      case 2:
        return Colors.green;
      default:
        return Colors.blue;
    }
  }
}
