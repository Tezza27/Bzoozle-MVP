import 'package:flutter/material.dart';

class NewEditProvider with ChangeNotifier {
  bool _newVenue = false;

//getters
  bool get newVenue => _newVenue;

//setters
  changeNewVenue(bool value) {
    _newVenue = value;
    notifyListeners();
  }
}
