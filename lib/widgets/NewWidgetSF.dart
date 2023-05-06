import 'package:flutter/material.dart';

class NewWidgetSF extends StatefulWidget
{
  const NewWidgetSF({super.key});

  @override
  State<StatefulWidget> createState() {
   return MyAppState();
  }
}

class MyAppState extends State<NewWidgetSF>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Amazon✨✨',
          style: TextStyle(
            fontSize: 30,
            color: Colors.greenAccent,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Welcome to Amazon',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}