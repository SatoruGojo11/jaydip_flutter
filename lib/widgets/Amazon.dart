import 'package:flutter/material.dart';

class Amazon extends StatefulWidget {
  const Amazon({super.key});

  @override
  State<StatefulWidget> createState() {
    return AmazonApp();
  }
}

class AmazonApp extends State<Amazon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Amazon',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
      body: OutlinedButton(
        // style: ButtonStyle(
        //   backgroundColor: Colors.white,
        // ),
        onPressed: () {},
        child: const Text(
          'Search Bar',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
