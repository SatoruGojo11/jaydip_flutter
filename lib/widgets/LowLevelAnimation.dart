import 'package:flutter/material.dart';
import 'package:jaydip_flutter/main.dart';

class AnimationinnormalwgApp extends StatefulWidget {
  const AnimationinnormalwgApp({Key? key}) : super(key: key);

  @override
  State<AnimationinnormalwgApp> createState() => _AnimationinnormalwgAppState();
}

class _AnimationinnormalwgAppState extends State<AnimationinnormalwgApp>
    with SingleTickerProviderStateMixin {
  AnimationController? maincontroller;
  CurvedAnimation? designanimation;
  Animation<double>? sizeanimation;
  Animation<Color?>? coloranimation;

  bool play = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    maincontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    designanimation =
        CurvedAnimation(parent: maincontroller!, curve: Curves.easeInOut);
    sizeanimation =
        Tween<double>(begin: 100, end: 200).animate(designanimation!);
    coloranimation =
        ColorTween(begin: Colors.amberAccent, end: Colors.deepOrange)
            .animate(designanimation!);

    maincontroller!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation in Normal Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: FlutterLogo(),
              height: sizeanimation!.value,
              width: sizeanimation!.value,
              color: coloranimation!.value,
              padding: EdgeInsets.all(20),
            ),
            ElevatedButton(
              onPressed: maincontroller!.isCompleted
                  ? null
                  : () => maincontroller!.forward(),
              child: Text('Forward'),
            ),
            ElevatedButton(
              onPressed: maincontroller!.isDismissed
                  ? null
                  : () => maincontroller!.reverse(),
              child: Text('Reverse'),
            ),
            ElevatedButton(
              onPressed: () {
                  maincontroller!.repeat();
              },
              child: Text('Play'),
            ),
            ElevatedButton(
              onPressed: () {
                maincontroller!.stop();
              },
              child: Text('Pause'),
            ),

          ],
        ),
      ),
    );
  }
}
