import 'package:flutter/material.dart';

class TextQuestionProvider with ChangeNotifier {
  List<String> _questionDetail = [];

  TextQuestionProvider(_questionDetail);

  List<String> detailget() => _questionDetail;

  void detailset(value) {
    _questionDetail.add(value);
    notifyListeners();
  }
}
