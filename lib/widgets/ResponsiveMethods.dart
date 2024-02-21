import 'package:flutter/material.dart';

class ResponsiveApp extends StatefulWidget {
  const ResponsiveApp({super.key});

  @override
  State<ResponsiveApp> createState() => _ResponsiveAppState();
}

class _ResponsiveAppState extends State<ResponsiveApp> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData _md = MediaQuery.of(context);
    var h1 = _md.size.height;
    var w1 = _md.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Methods App'),
      ),
      // body: Container(
      //   height: h1*0.5,
      //   width: w1,
      //   color: Colors.deepOrange,
      //   child: Center(
      //       child: Text(
      //     'Media Query',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: w1*0.12,
      //     ),
      //   )),
      // ),
      // body: Column(
      //   children: [
      //     Flexible(
      //       flex: 2,
      //       child: Container(
      //         color: Colors.red,
      //         // child: Text(
      //         //   'Hello 1',
      //         //   style: TextStyle(
      //         //     fontSize: 50,
      //         //   ),
      //         // ),
      //       ),
      //     ),
      //     Flexible(
      //       flex: 1,
      //       child: Container(
      //         color: Colors.amber,
      //         // child: Text(
      //         //   'Hello 1',
      //         //   style: TextStyle(
      //         //     fontSize: 50,
      //         //   ),
      //         // ),
      //       ),
      //     ),
      //   ],
      // ),
      body: FractionallySizedBox(
        child: Container(
          child: Center(
              child: Text(
            'Hello',
            style: TextStyle(color: Colors.white, fontSize: w1*0.08),
          )),
          color: Colors.deepOrange,
          height: h1,
          width: w1,
        ),
      ),
    );
  }
}
