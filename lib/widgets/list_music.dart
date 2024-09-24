import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/music_controller.dart';

class ForYouList extends StatelessWidget {
  final MusicController controller;

  const ForYouList({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: controller.forYou.length,
      itemBuilder: (context, index) {
        final item = controller.forYou[index];
        if (controller.searchQuery.value.isNotEmpty &&
            !item['band']!.toLowerCase().contains(controller.searchQuery.value) &&
            !item['song']!.toLowerCase().contains(controller.searchQuery.value)) {
          return SizedBox(); // Tidak ditampilkan jika tidak cocok dengan pencarian
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF6A0E43),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              leading: ClipOval(
                child: Image.asset(
                  item['image']!,
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                item['band']!,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                item['song']!,
                style: TextStyle(color: Colors.white70),
              ),
              trailing: Icon(
                Icons.play_circle_fill,
                color: Colors.pinkAccent,
                size: 40,
              ),
            ),
          ),
        );
      },
    ));
  }
}
