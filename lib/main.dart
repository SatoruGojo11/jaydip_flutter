import 'package:flutter/material.dart';
import 'package:jaydip_flutter/widgets/Videoplayer.dart';
import 'package:jaydip_flutter/widgets/YoutubePlayerApp.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YoutubePlayerApp(),
    ),
  );
}

appbar(txt, bgcolor) {
  var apb = AppBar(
    centerTitle: true,
    title: Text(
      '$txt',
      style: TextStyle(
        fontSize: 20,
        color: bgcolor,
      ),
    ),
  );
  return apb;
}
