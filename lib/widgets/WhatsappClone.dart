// import 'dart:math';
import 'package:flutter/material.dart';

class WspClone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Wspapp();
  }
}

class Wspapp extends State<WspClone> {
  // var list = List.generate(30, (index) => 'User 1');
  var ls = [
    'assets/image/0.jpg',
    'assets/image/1.jpg',
    'assets/image/2.jpg',
    'assets/image/3.jpg',
    'assets/image/4.jpg',
    'assets/image/5.jpg',
    'assets/image/6.jpg',
    'assets/image/7.jpg',
    'assets/image/8.jpg',
    'assets/image/9.jpg',
    'assets/image/10.jpg',
    'assets/image/11.jpg',
    'assets/image/12.jpg',
    'assets/image/13.jpg',
    'assets/image/14.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Whatsapp',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: ls.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: ListTile(
              title: Text(
                'User $index',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.redAccent,
                ),
              ),
              subtitle: Text(
                '  I am $index....',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.purpleAccent,
                ),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                backgroundImage: AssetImage(ls[index]),
              ),
              onTap: () {},
              contentPadding: EdgeInsets.all(3),
            ),
          );
        },
      ),
    );
  }
}
