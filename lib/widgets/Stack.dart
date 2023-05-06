import 'package:flutter/material.dart';

class StackApp extends StatefulWidget {
  const StackApp({Key? key}) : super(key: key);

  @override
  State<StackApp> createState() => _StackAppState();
}

class _StackAppState extends State<StackApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stack Usage',
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.deepOrange,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
