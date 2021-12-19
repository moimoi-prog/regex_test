import 'package:flutter/cupertino.dart';

class TopPageState extends ChangeNotifier {
  String inputText = '';
  String regexText = '';

  void changeInput(String text) {
    inputText = text;
    notifyListeners();
  }

  void changeRegex(String text) {
    regexText = text;
    notifyListeners();
  }
}