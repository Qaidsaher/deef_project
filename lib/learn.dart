import 'package:deafproject/HomePage.dart';
import 'package:deafproject/faq.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  int index = 1;
  List<VideoPlayerController> _controllers = [];

  @override
  void initState() {
    super.initState();
    _initializeVideos();
  }

  void _initializeVideos() {
    List<String> videoPaths = [
      "assets/new/video1.mp4",
      "assets/new/video2.mp4",
      "assets/new/video3.mp4",
      "assets/new/video4.mp4"
    ];

    for (String path in videoPaths) {
      VideoPlayerController controller = VideoPlayerController.asset(path);

      controller.initialize().then((_) {
        setState(() {}); // Refresh UI after initialization
      }).catchError((error) {
        print("Error initializing video: $error"); // Debugging log
      });

      _controllers.add(controller);
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
          if (index == 1) {
            Get.to(() => HomePage());
          }
          if (index == 0) {
            Get.back();
          }
        },
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.green),
        selectedIconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Color(0xFF002244),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.arrow_back), label: "Back"),
          BottomNavigationBarItem(icon: Icon(Icons.save), label: "Save"),
        ],
        showUnselectedLabels: true,
      ),
      appBar: AppBar(
        title: Text("Deaf_App".tr),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => FAQPage());
            },
            icon: Icon(Icons.question_mark),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Explore Video Lessons",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: 6, // 4 videos + 2 images
                itemBuilder: (context, index) {
                  if (index < 4) {
                    return _buildVideoPlayer(_controllers[index]);
                  } else {
                    return _buildImage(index == 4
                        ? "assets/new/photo1.jpg"
                        : "assets/new/photo2.jpg");
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoPlayer(VideoPlayerController controller) {
    return controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: Stack(
              alignment: Alignment.center,
              children: [
                VideoPlayer(controller),
                Positioned(
                  bottom: 5,
                  child: IconButton(
                    icon: Icon(
                      controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        controller.value.isPlaying
                            ? controller.pause()
                            : controller.play();
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        : Center(child: CircularProgressIndicator());
  }

  Widget _buildImage(String assetPath) {
    return Image.asset(assetPath, fit: BoxFit.cover);
  }
}
