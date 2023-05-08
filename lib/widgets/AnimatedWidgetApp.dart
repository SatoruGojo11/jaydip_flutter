import 'package:flutter/material.dart';

class MakeownAnimatedWidgetApp extends StatefulWidget {
  const MakeownAnimatedWidgetApp({Key? key}) : super(key: key);

  @override
  State<MakeownAnimatedWidgetApp> createState() =>
      _MakeownAnimatedWidgetAppState();
}

class _MakeownAnimatedWidgetAppState extends State<MakeownAnimatedWidgetApp>
    with SingleTickerProviderStateMixin {
  AnimationController? Mycontroller;
  Animation<double>? sizeAnimation;
  Animation<Color?>? colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Mycontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    sizeAnimation = Tween<double>(begin: 100, end: 300).animate(Mycontroller!);
    colorAnimation =
        ColorTween(begin: Colors.deepPurpleAccent, end: Colors.indigoAccent)
            .animate(Mycontroller!);

    Mycontroller!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Animated Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _AnimatedContainer(
              Animatedcolor: colorAnimation,
              Animatedsize: sizeAnimation,
            ),
            ElevatedButton(
                onPressed: Mycontroller!.isCompleted
                    ? null
                    : () => Mycontroller!.forward(),
                child: Text('Forward Animation')),
            ElevatedButton(
                onPressed: Mycontroller!.isDismissed
                    ? null
                    : () => Mycontroller!.reverse(),
                child: Text('Reverse Animation')),
            ElevatedButton(
                onPressed: () => Mycontroller!.repeat(reverse: true),
                child: Text('Loop Animation')),
            ElevatedButton(
                onPressed: () => Mycontroller!.stop(),
                child: Text('Stop Animation')),
          ],
        ),
      ),
    );
  }
}

class _AnimatedContainer extends AnimatedWidget {
  Animation<double>? Animatedsize;
  Animation<Color?>? Animatedcolor;

  _AnimatedContainer({this.Animatedsize, this.Animatedcolor})
      : super(listenable: Animatedsize!);

  @override
  Widget build(BuildContext context) {
    final Animation<double> sizeAnimation = listenable as Animation<double>;

    return Container(
      child: FlutterLogo(),
      height: Animatedsize!.value,
      width: Animatedsize!.value,
      color: Animatedcolor!.value,
      padding: EdgeInsets.all(20),
    );
  }
}
