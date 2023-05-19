import 'package:flutter/material.dart';
import 'videoshow.dart';

class Video_Page extends StatefulWidget {
  Video_Page({super.key});
  @override
  State<Video_Page> createState() => _Video_PageState();
}

class _Video_PageState extends State<Video_Page> {
  int itemCount = 15;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Video ${(index + 1)}'),
          leading: const Icon(Icons.ondemand_video),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Video_Play(),
            ));
          },
        );
      },
    );
  }
}
