import 'package:flutter/material.dart';

class SecondScreen1 extends StatefulWidget {
  const SecondScreen1({super.key});


  @override
  State<StatefulWidget> createState() {
    return Second();
  }
}

class Second extends State<SecondScreen1> {
  var sub1 = [
    "Remote Sensing and GIS (JG)",
    "Advanced Java Programming (DC)",
    "Intellectual Property Rights (VK)",
    "Web Programming (VP)",
    "L-U-N-C-H",
    "Lab",
  ];

  var time1 = [
    "9:00 to 10.00 Am",
    "10:00 to 11:00 Am",
    "11:00 to 12.00 noon",
    "12:00 to 1:00 Pm",
    "1:00 to 1:30 Pm",
    "1:30 to 3:30 Pm",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          'Subject',
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
                  title: Text('${sub1[index]}'),
                  subtitle: Text('${time1[index]}'),
                  tileColor: Colors.black45,
                  leading: Icon(Icons.ac_unit_rounded),
                  splashColor: Colors.redAccent,
                  iconColor: Colors.black,
                  onTap: () {},
                ),
              ],
            ),
          );
        },
        itemCount: sub1.length,
      ),
    );
  }
}
