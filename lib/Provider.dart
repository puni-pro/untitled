import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/controller.dart';

class HomePageInformation with ChangeNotifier {
  int counter = 0;

  //状態を変化させる処理（ボタンを押した時に実行される処理）
  void incrementCounter() {
    counter++;
    notifyListeners();
  }

}


class CloudPageInformation with ChangeNotifier {



}