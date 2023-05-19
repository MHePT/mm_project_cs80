import 'package:flutter/material.dart';
import 'videoshow.dart';

class VideoPage extends StatefulWidget {
  VideoPage({super.key});
  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
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
              builder: (context) => const VideoPlay(),
            ));
          },
        );
      },
    );
  }
}
