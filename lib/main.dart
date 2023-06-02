import 'package:flutter/material.dart';
import 'package:jaydip_flutter/database/SheredPreference.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharedPreferenceUse(),
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
