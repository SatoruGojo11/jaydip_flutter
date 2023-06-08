import 'package:flutter/material.dart';
import 'DatabaseTasks/SharedPreference/sharedpreflogin.dart';
import 'database/Sqlite/Sqlite.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SqliteUse(),
      /*theme: ThemeData(
        scaffoldBackgroundColor: Colors.black87,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber,
        ),
      ),*/
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
