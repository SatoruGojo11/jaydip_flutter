import 'package:flutter/material.dart';

class SecondScreen7 extends StatefulWidget {
  const SecondScreen7({super.key});


  @override
  State<StatefulWidget> createState() {
    return Seventh();
  }
}

class Seventh extends State<SecondScreen7> {
  var sub7 = [
    "Enjoy🎇🎆",
  ];

  var time7 = [
    "It's a Holiday....",
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
                  title: Text('${sub7[index]}'),
                  subtitle: Text('${time7[index]}'),
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
        itemCount: sub7.length,
      ),
    );
  }
}
