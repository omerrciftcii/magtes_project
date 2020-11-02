import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationProvider with ChangeNotifier {
  GlobalKey<ScaffoldState> _scaffoldKey;
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  int _currentIndex = 0; 
 PageController _pageController = PageController();
  PageController get pageController => _pageController;

  set pageController(value){
    _pageController = value;
    notifyListeners();
  }

  get currentIndex => _currentIndex;

  set currentIndex(value){
    _currentIndex = value;
    notifyListeners();
  }
  set scaffoldKey(value) {
    _scaffoldKey = value;
    notifyListeners();
  }

 



}