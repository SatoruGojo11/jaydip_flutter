import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:jaydip_flutter/DatabaseTasks/Hive/hivefirstscreen.dart';
import 'package:jaydip_flutter/database/Hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  //This code is only for Hive database Use
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  await Hive.openBox<String>('Students');
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiveFirstScreen(),
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
