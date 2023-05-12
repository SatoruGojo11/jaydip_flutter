import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerApp extends StatefulWidget {
  const VideoPlayerApp({Key? key}) : super(key: key);

  @override
  State<VideoPlayerApp> createState() => _VideoPlayerAppState();
}

class _VideoPlayerAppState extends State<VideoPlayerApp> {
  VideoPlayerController? vdcontroller;

  @override
  void initState() {
    super.initState();
    vdcontroller = VideoPlayerController.network(
        'https://mazwai.com/videvo_files/video/free/2019-12/small_watermarked/190915_A_04_Drone_12_preview.webm')
      ..initialize().then((value) {
        setState(() {});
      })
      ..setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Extended Image App',
          style: TextStyle(fontSize: 20, color: Colors.deepOrange),
        ),
      ),
      body: Center(
        // child: vdcontroller!.value.isInitialized
        //     ? VideoplayerUI()
        //     : CircularProgressIndicator(),
        child: VideoplayerUI(),
      ),
    );
  }

  VideoplayerUI() {
    return Column(
      children: [
        AspectRatio(aspectRatio: vdcontroller!.value.aspectRatio),
        Text(
            '${vdcontroller!.value.position} / ${vdcontroller!.value.duration}'),
        VideoProgressIndicator(vdcontroller!, allowScrubbing: true),
        ElevatedButton.icon(
            onPressed: () {
              setState(() {
                vdcontroller!.value.isPlaying
                    ? vdcontroller!.pause()
                    : vdcontroller!.play();
              });
            },
            icon: vdcontroller!.value.isPlaying
                ? Icon(Icons.play_arrow)
                : Icon(Icons.pause),
            label: Text('${vdcontroller!.value.isPlaying ? 'Play' : 'Pause'}')),
      ],
    );
  }
}
