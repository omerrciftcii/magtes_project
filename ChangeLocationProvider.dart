import 'package:flutter/cupertino.dart';

class ChangeLocationProvider with ChangeNotifier {
  List _location;
//liste firebase'den çekilecek.

  get lastLocation =>_location;

  set lastLocation(value) {
    _location = value;
    notifyListeners();
  }
}
