import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class MakeCallApp extends StatefulWidget {
  const MakeCallApp({super.key});

  @override
  State<MakeCallApp> createState() => _MakeCallAppState();
}

class _MakeCallAppState extends State<MakeCallApp> {
  var _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Internet Connectivity', Colors.white),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _number,
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
            ),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {
                launchUrl(
                  Uri(scheme: 'tel', path: _number.text),
                );
              },
              icon: Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
