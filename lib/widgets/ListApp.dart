import 'package:flutter/material.dart';

class ListApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Listuse();
  }
}

class Listuse extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LIST',
          style: TextStyle(
            fontSize: 25,
            color: Colors.redAccent,
          ),
        ),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('User 1'),
            subtitle: Text('Hello'),
          ),
          ListTile(
            title: Text('User 2'),
            subtitle: Text('Hii'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.work),
          ),
        ],
      ),
    );
  }
}
