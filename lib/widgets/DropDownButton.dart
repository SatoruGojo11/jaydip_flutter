import 'package:flutter/material.dart';

class DropDB extends StatefulWidget {
  const DropDB({Key? key}) : super(key: key);

  @override
  State<DropDB> createState() => _DropDBState();
}

class _DropDBState extends State<DropDB> {
  var droplist = [
    'India',
    'United_States',
    'Chaina',
    'Germany',
    'England',
    'Canada'
  ];

  String? currentvalue = 'India';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Drop Down Button',
          style: TextStyle(
            fontSize: 30,
            color: Colors.amber,
          ),
        ),
      ),
      body: Center(
        child: DropdownButton(
          items: droplist
                .map(
                  (e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ),
                )
                .toList(),
          onChanged: (value) {
            setState(() {
              currentvalue = value;
            });
          },
          value: currentvalue,
        ),
      ),
    );
  }
}
