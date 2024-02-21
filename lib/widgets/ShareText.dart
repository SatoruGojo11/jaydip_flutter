import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../main.dart';

class ShareTextApp extends StatefulWidget {
  const ShareTextApp({super.key});

  @override
  State<ShareTextApp> createState() => _ShareTextAppState();
}

class _ShareTextAppState extends State<ShareTextApp> {
  var _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Share Text', Colors.white),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _text,
                decoration: InputDecoration(labelText: 'Text'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Share.share(_text.text);
              },
              child: Text('Share'),
            ),
          ],
        ),
      ),
    );
  }
}
