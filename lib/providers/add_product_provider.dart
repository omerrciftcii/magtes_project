import 'package:flutter/cupertino.dart';

class AddProductProvider with ChangeNotifier {
  bool _isBroken;

  get isBroken => _isBroken;

  set isBroken(value) {
    _isBroken = value;
    notifyListeners();
  }
}
