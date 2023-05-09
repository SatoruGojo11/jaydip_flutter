import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieUseApp extends StatefulWidget {
  const LottieUseApp({Key? key}) : super(key: key);

  @override
  State<LottieUseApp> createState() => _LottieUseAppState();
}

class _LottieUseAppState extends State<LottieUseApp>
    with SingleTickerProviderStateMixin {
  AnimationController? Ltcontroller;
  bool play = true;

  @override
  void initState() {
    super.initState();
    Ltcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lootie App'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 500,
              width: 600,
              child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_poqmycwy.json',
                  controller: Ltcontroller,
                  fit: BoxFit.fill),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => Ltcontroller!.reverse(),
                    icon: Icon(Icons.skip_previous)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        play = !play;
                        play
                            ? () => Ltcontroller!.stop()
                            : () => Ltcontroller!.repeat(reverse: true);
                      });
                    },
                    icon: Icon(play ? Icons.play_arrow : Icons.pause)),
                IconButton(
                    onPressed: () => Ltcontroller!.forward(),
                    icon: Icon(Icons.skip_next)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
