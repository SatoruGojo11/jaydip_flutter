import 'dart:math';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Amazon✨',
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
          ),
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.yellowAccent,
          height: 200,
          width: 200,
          child: Text(
            'Number :- ${randomNumber()}',
            style: TextStyle(
              fontSize: 25,
              color: Colors.pink,
              fontFamily: 'Orbitron',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  randomNumber() {
    var number = random.nextInt(30);
    return number;
  }
}
