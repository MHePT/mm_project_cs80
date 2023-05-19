import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'home_page.dart';
import 'videoselector.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

List<Widget> buttomPages = [const HomePage(), VideoPage(), const ProfilePage()];

class _NavigationPageState extends State<NavigationPage> {
  int _crrPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buttomPages[_crrPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: " ", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: " ", icon: Icon(Icons.video_camera_back)),
          BottomNavigationBarItem(label: " ", icon: Icon(Icons.person_2)),
        ],
        currentIndex: _crrPage,
        onTap: (int index) {
          setState(() {
            _crrPage = index;
          });
        },
      ),
    );
  }
}
