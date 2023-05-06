import 'package:flutter/material.dart';
import '1st_Screen.dart';
import '2nd_Screen.dart';
import '3rd_Screen.dart';
import '4th_Screen.dart';
import '5th_Screen.dart';
import '6th_Screen.dart';
import '7th_Screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return First();
  }
}

class First extends State<FirstScreen> {
  var days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  var screen = [
    SecondScreen1(),
    SecondScreen2(),
    SecondScreen3(),
    SecondScreen4(),
    SecondScreen5(),
    SecondScreen6(),
    SecondScreen7(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          'Time Table',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text('${days[index]}'),
                    leading: Icon(Icons.open_with),
                    tileColor: Colors.black45,
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    iconColor: Colors.black,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => screen[index]),
                        );
                    },
                  ),
                ],
              ),
            );
          },
          itemCount: days.length,
        ),
    );
  }
}
