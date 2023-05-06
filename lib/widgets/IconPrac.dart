import 'package:flutter/material.dart';

class IconPrac extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.call,
              size: 50,
            ),
            Icon(
              Icons.send_rounded,
              size: 50,
            ),
            Icon(
              Icons.share_rounded,
              size: 50,
            ),
          ],
        ),
      ),

      // ody:
    );
  }
}