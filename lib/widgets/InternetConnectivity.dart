import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class InternetConnectivityApp extends StatefulWidget {
  const InternetConnectivityApp({super.key});

  @override
  State<InternetConnectivityApp> createState() =>
      _InternetConnectivityAppState();
}

class _InternetConnectivityAppState extends State<InternetConnectivityApp> {
  String Result = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    statuscheck();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Internet Connectivity', Colors.white),
      body: Center(
        child: Text(
          Result,
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 40,
          ),
        ),
      ),
    );
  }

  statuscheck() {
    Connectivity().onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        setState(() {
          Result = 'Connected';
        });
      } else {
        setState(() {
          Result = 'Not Connected';
        });
      }
    });
  }
}
