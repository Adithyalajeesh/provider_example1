

import 'package:flutter/material.dart';

class NumberListprovider extends ChangeNotifier{

  List<int> numbers=[1,2,3,4];
  void add(){
    int last= numbers.last;
    numbers.add(last+1);
    notifyListeners();

}
  void subtract() {
    if (numbers.length > 1) {
      numbers.removeLast();
      notifyListeners();
    }
  }

}