import 'package:flutter/material.dart';

class SecondScreen5 extends StatefulWidget {
  const SecondScreen5({super.key});


  @override
  State<StatefulWidget> createState() {
    return Fifth();
  }
}

class Fifth extends State<SecondScreen5> {
  var sub5 = [
    "Lab",
    "Compiler Design (VTP)",
    "Compiler Network (KI)",
    "L-U-N-C-H",
  ];

  var time5 = [
    "9:00 to 11.00 Am",
    "11:00 to 12:00 noon",
    "12:00 to 1:00 Pm",
    "1:00 to 1:30 Pm",
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
                  title: Text('${sub5[index]}'),
                  subtitle: Text('${time5[index]}'),
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
        itemCount: sub5.length,
      ),
    );
  }
}
