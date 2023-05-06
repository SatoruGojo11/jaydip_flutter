import 'package:flutter/material.dart';

class BottomappbarApp extends StatefulWidget {
  const BottomappbarApp({Key? key}) : super(key: key);

  @override
  State<BottomappbarApp> createState() => _BottomappbarAppState();
}

class _BottomappbarAppState extends State<BottomappbarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom App Bar'),
      ),
      body: Center(
        child: Text('These is Bottom App Bar'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(Icons.home),
            SizedBox(
              width: 50,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 50,
            ),
            Icon(Icons.add_box_outlined),
            SizedBox(
              width: 50,
            ),
            Icon(Icons.slow_motion_video_rounded),
            SizedBox(
              width: 50,
            ),
            Icon(Icons.account_circle),
          ],
        ),
      ),
    );
  }
}
