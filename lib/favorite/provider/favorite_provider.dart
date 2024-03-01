

import 'package:flutter/widgets.dart';

class favoriteProvider extends ChangeNotifier{
   List<String> _words=[];
  List<String> get words =>_words;

  void togglefvaorite(String word){

    final isExist= _words.contains(word);

    if(isExist){
      _words.remove(word);
    }
    else{
      _words.add(word);
    }
    notifyListeners();

  }
   bool isExist(String word) {
     final isExist = _words.contains(word);
     return isExist;
   }


     void clearfavorite(){
    _words=[];
    notifyListeners();
  }

   }
