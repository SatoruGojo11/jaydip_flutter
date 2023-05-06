import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyButtonApp();
  }
}

class MyButtonApp extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Button',
          style: TextStyle(
            fontSize: 45,
            color: Colors.yellowAccent,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // ******** 1st **********
          ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "Elevated Button",
                toastLength: Toast.LENGTH_LONG,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            child: const Text(
              'Elevated Button',
              style: TextStyle(fontSize: 30),
            ),
          ),
          // ******** 2nd **********
          TextButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: 'Text Button',
                toastLength: Toast.LENGTH_LONG,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            child: const Text(
              'Text Button',
              style: TextStyle(fontSize: 30),
            ),
          ),
          // ******** 3rd **********
          OutlinedButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: 'Outlined Button',
                toastLength: Toast.LENGTH_LONG,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            child: const Text(
              'Outlined Button',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ),
          // ******** 4th **********
          IconButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: 'Icon Button',
                toastLength: Toast.LENGTH_LONG,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            icon: const Icon(
              Icons.call,
              color: Colors.purpleAccent,
              size: 30,
            ),
            tooltip: 'Call',
          ),
          // *********** 5th ********
          DropdownButton(
            items: const [
              DropdownMenuItem(
                child: Text("New York"),
                value: "New York",
              ),
              DropdownMenuItem(
                child: Text("Tokyo"),
                value: "Tokyo",
              ),
              DropdownMenuItem(
                child: Text("Moscow"),
                value: "Moscow",
              ),
            ],
            onChanged: (value) {
              print("You selected $value");
            },
            value: "New York",
          )
        ],
      ),
    );
  }
}
