import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/music_controller.dart';

class MusicScreen extends StatelessWidget {
  final MusicController controller = Get.put(MusicController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001733),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              // Search Bar
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Color(0xFF6A0E43),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search music...',
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.search, color: Colors.pinkAccent),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Recently Played Section
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
              SizedBox(height: 20),

              // For You Section
              Text(
                'For You',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              // List Lagu
              Obx(() => ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.forYou.length,
                itemBuilder: (context, index) {
                  final item = controller.forYou[index];
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
              )),
            ],
          ),
        ),
      ),
    );
  }
}
