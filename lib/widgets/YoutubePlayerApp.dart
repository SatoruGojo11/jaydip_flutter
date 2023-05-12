import 'package:flutter/material.dart';
import 'package:jaydip_flutter/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerApp extends StatefulWidget {
  const YoutubePlayerApp({Key? key}) : super(key: key);

  @override
  State<YoutubePlayerApp> createState() => _YoutubePlayerAppState();
}

class _YoutubePlayerAppState extends State<YoutubePlayerApp> {
  YoutubePlayerController? ytcontroller;

  /*var urls = [
    'https://www.youtube.com/watch?v=gQ5qVtoLMk4',
    'https://www.youtube.com/watch?v=aYJgrgYQCjU',
    'https://www.youtube.com/watch?v=VBQ4d1GMOtk',
    'https://www.youtube.com/watch?v=sTA2Lj0nH64',
    'https://www.youtube.com/watch?v=7EWt3veQ_MU',
    'https://www.youtube.com/watch?v=mv6ZFeLLdow',
    'https://www.youtube.com/watch?v=kJOGN-w12Qo',
    'https://www.youtube.com/watch?v=tYSrY4iPX6w',
    'https://www.youtube.com/watch?v=_hjWm7MSV8k',
    'https://www.youtube.com/watch?v=zyTyKso-XaE',
    'https://www.youtube.com/watch?v=Z0lb5jR1ScI',
    'https://www.youtube.com/watch?v=KTu9-m7tdWM',
    'https://www.youtube.com/watch?v=UqQ8LqGhW0I',
  ];*/

  @override
  void initState() {
    super.initState();
    ytcontroller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=d9Pp_qtvwA4')!,
      flags: YoutubePlayerFlags(
        // forceHD: true,
        // hideControls: true,
        autoPlay: true,
        loop: true,
        // mute: false,
      ),
    )..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: ytcontroller!),
      builder: (context, player) => Scaffold(
        appBar: appbar(
          'Youtube Player',
          Colors.white,
        ),
        body: ListView(
          children: [
            SizedBox(height: 30),
            player,
            SizedBox(height: 10),
            Text('Title :- ${ytcontroller!.metadata.title}'),
            SizedBox(height: 10),
            Text('Author :- ${ytcontroller!.metadata.author}'),
            SizedBox(height: 10),
            Text(
                'Time :- ${ytcontroller!.metadata.duration.inSeconds} Seconds'),
            SizedBox(height: 10),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonHeight: 20.0,
              children: [
                /*ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      ytcontroller!.value.isReady
                          ? ytcontroller!.mute()
                          : ytcontroller!.unMute();
                    });
                  },
                  label: Text(
                      '${ytcontroller!.value.isControlsVisible ? 'Unmute' : 'Mute'}'),
                  icon: ytcontroller!.value.isPlaying
                      ? Icon(Icons.volume_up)
                      : Icon(Icons.volume_off),
                ),*/
                ElevatedButton.icon(
                    onPressed: () => ytcontroller!.mute(),
                    icon: Icon(Icons.volume_off),
                    label: Text('Mute')),
                ElevatedButton.icon(
                    onPressed: () => ytcontroller!.unMute(),
                    icon: Icon(Icons.volume_up),
                    label: Text('Unmute')),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  // style: ButtonStyle(elevation: ,alignment: MainAxisAlignment.center),
                  onPressed: () {
                    ytcontroller!.load(YoutubePlayer.convertUrlToId(
                        '${'https://www.youtube.com/watch?v=KTu9-m7tdWM'}')!);
                  },
                  icon: Icon(Icons.skip_next),
                  label: Text('NEXT VIDEO'),
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                    onPressed: () {
                      ytcontroller!.value.isPlaying
                          ? ytcontroller!.pause()
                          : ytcontroller!.play();
                      /*if (ytcontroller!.value.isPlaying) {
                    ytcontroller!.pause();
                  } else {
                    ytcontroller!.play();
                  }*/
                    },
                    icon: ytcontroller!.value.isPlaying
                        ? Icon(Icons.pause)
                        : Icon(Icons.play_arrow),
                    label:
                        Text(ytcontroller!.value.isPlaying ? 'Pause' : 'Play')),
                ElevatedButton.icon(
                    onPressed: () =>
                        ytcontroller!.seekTo(Duration(seconds: 10)),
                    icon: Icon(Icons.rotate_right),
                    label: Text('Forward'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
