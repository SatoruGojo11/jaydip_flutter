import 'package:flutter/material.dart';

class DSSheetApp extends StatefulWidget {
  const DSSheetApp({Key? key}) : super(key: key);

  @override
  _DSSheetAppState createState() => _DSSheetAppState();
}

class _DSSheetAppState extends State<DSSheetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DSSheet',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black87,
          ),
        ),
      ),
      body: DSSheet(),
    );
  }
}

class DSSheet extends StatefulWidget {
  const DSSheet({Key? key}) : super(key: key);

  @override
  State<DSSheet> createState() => _DSSheetState();
}

class _DSSheetState extends State<DSSheet> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Container(
            color: Colors.yellow,
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.2,
          minChildSize: 0.2,
          maxChildSize: 0.8,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Scrollbar(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('User $index'),
                      leading: Icon(Icons.account_circle),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
