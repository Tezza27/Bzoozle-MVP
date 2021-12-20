import 'package:bzoozle/Lists/pages_list.dart';
import 'package:flutter/material.dart';

class PageNumberProvider with ChangeNotifier {
  int _pageNumber = 0;

//getters
  int get pageNumber => _pageNumber;

//setters
  changePageNumber(int value) {
    _pageNumber = value;
    notifyListeners();
  }

  set pageNumberUp(int _pageNumber) {
    if (_pageNumber < (detailPageList.length - 1)) {
      _pageNumber++;
      notifyListeners();
    }
  }

  set pageNumberDown(int _pageNumber) {
    if (_pageNumber > 0) {
      _pageNumber--;
      notifyListeners();
    }
  }
}
