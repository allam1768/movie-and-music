import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';


class ProfileScreen extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
        backgroundColor: Color.fromRGBO(0, 23, 51, 1), // Warna AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile Screen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40), // Jarak antara teks dan tombol
            ElevatedButton(
              onPressed: () => profileController.logout(), // Panggil logout dari controller
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
