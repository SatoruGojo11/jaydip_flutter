import 'package:flutter/material.dart';

class Numberchangeprovider extends ChangeNotifier {

  List digits = [1,2,3,4];

  void add(){
    int lastdgt = digits.last;

    digits.add(lastdgt+1);
    notifyListeners();
  }

}