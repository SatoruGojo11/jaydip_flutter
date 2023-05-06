import 'package:flutter/material.dart';

class SecondScreen6 extends StatefulWidget {
  const SecondScreen6({super.key});


  @override
  State<StatefulWidget> createState() {
    return Sixth();
  }
}

class Sixth extends State<SecondScreen6> {
  var sub6 = [
    "Enjoy✨🎉",
  ];

  var time6 = [
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
                  title: Text('${sub6[index]}'),
                  subtitle: Text('${time6[index]}'),
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
        itemCount: sub6.length,
      ),
    );
  }
}