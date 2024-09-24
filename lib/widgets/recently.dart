import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/music_controller.dart';

class RecentlyPlayed extends StatelessWidget {
  final MusicController controller;

  const RecentlyPlayed({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recently Played',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 120,
          child: Obx(() => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.recentlyPlayed.length,
            itemBuilder: (context, index) {
              final item = controller.recentlyPlayed[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        item['image']!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      item['title']!,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              );
            },
          )),
        ),
      ],
    );
  }
}
