import 'package:flutter/material.dart';

class BottomApp extends StatefulWidget {
  const BottomApp({super.key});

  @override
  State<StatefulWidget> createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bottom Sheet',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black87,
          ),
        ),
      ),
      body: Bottom(),
    );
  }
}

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 100,
        child: ElevatedButton(
          onPressed: () {
            showBottomSheet(
              context: context,
              builder: (context) => Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 5,
                      color: Colors.amber,
                    ),
                  ),
                ),
                child: ListView(
                  shrinkWrap: true,
                  primary: false,
                  children: [
                    ListTile(
                      title: Text('User 1'),
                      leading: Icon(Icons.account_circle),
                    ),
                    ListTile(
                      title: Text('User 2'),
                      leading: Icon(Icons.account_circle),
                    ),
                    ButtonBar(
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            'OK',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text(
            'Click',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
