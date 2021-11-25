import 'package:flutter/material.dart';

class SetOpeningTimesProvider with ChangeNotifier {
  bool _chBoxMonday = false;
  bool _chBoxTuesday = false;
  bool _chBoxWednesday = false;
  bool _chBoxThursday = false;
  bool _chBoxFriday = false;
  bool _chBoxSaturday = false;
  bool _chBoxSunday = false;
  bool _chBox24Open = false;
  bool _chBox24Closed = false;
  bool _chBoxNoOpen = false;
  bool _chBoxNoClose = false;
  String _originalOpenTime = "10:30";
  String _originalCloseTime = "23:30";
  String _selectedOpenTime = "00:00";
  String _selectedCloseTime = "00:00";
  String _mondayOpenTime = "10:00";
  String _mondayCloseTime = "23:00";
  String _tuesdayOpenTime = "10:00";
  String _tuesdayCloseTime = "23:00";
  String _wednesdayOpenTime = "10:00";
  String _wednesdayCloseTime = "23:00";
  String _thursdayOpenTime = "10:00";
  String _thursdayCloseTime = "23:00";
  String _fridayOpenTime = "10:00";
  String _fridayCloseTime = "23:00";
  String _saturdayOpenTime = "10:00";
  String _saturdayCloseTime = "23:00";
  String _sundayOpenTime = "10:00";
  String _sundayCloseTime = "23:00";

//Getters
  bool get chBoxMonday => _chBoxMonday;
  bool get chBoxTuesday => _chBoxTuesday;
  bool get chBoxWednesday => _chBoxWednesday;
  bool get chBoxThursday => _chBoxThursday;
  bool get chBoxFriday => _chBoxFriday;
  bool get chBoxSaturday => _chBoxSaturday;
  bool get chBoxSunday => _chBoxSunday;
  bool get chBox24Open => _chBox24Open;
  bool get chBox24Closed => _chBox24Closed;
  bool get chBoxNoOpen => _chBoxNoOpen;
  bool get chBoxNoClose => _chBoxNoClose;
  String get originalOpenTime => _originalOpenTime;
  String get originalCloseTime => _originalCloseTime;
  String get selectedOpenTime => _selectedOpenTime;
  String get selectedCloseTime => _selectedCloseTime;
  String get mondayOpenTime => _mondayOpenTime;
  String get mondayCloseTime => _mondayCloseTime;
  String get tuesdayOpenTime => _tuesdayOpenTime;
  String get tuesdayCloseTime => _tuesdayCloseTime;
  String get wednesdayOpenTime => _wednesdayOpenTime;
  String get wednesdayCloseTime => _wednesdayCloseTime;
  String get thursdayOpenTime => _thursdayOpenTime;
  String get thursdayCloseTime => _thursdayCloseTime;
  String get fridayOpenTime => _fridayOpenTime;
  String get fridayCloseTime => _fridayCloseTime;
  String get saturdayOpenTime => _saturdayOpenTime;
  String get saturdayCloseTime => _saturdayCloseTime;
  String get sundayOpenTime => _sundayOpenTime;
  String get sundayCloseTime => _sundayCloseTime;

//Setters
  set mondayOpenTime(String value) {
    _mondayOpenTime = value;
    notifyListeners();
  }

  set mondayCloseTime(String value) {
    _mondayCloseTime = value;
    notifyListeners();
  }

  set tuesdayOpenTime(String value) {
    _tuesdayOpenTime = value;
    notifyListeners();
  }

  set tuesdayCloseTime(String value) {
    _tuesdayCloseTime = value;
    notifyListeners();
  }

  set wednesdayOpenTime(String value) {
    _wednesdayOpenTime = value;
    notifyListeners();
  }

  set wednesdayCloseTime(String value) {
    _wednesdayCloseTime = value;
    notifyListeners();
  }

  set thursdayOpenTime(String value) {
    _thursdayOpenTime = value;
    notifyListeners();
  }

  set thursdayCloseTime(String value) {
    _thursdayCloseTime = value;
    notifyListeners();
  }

  set fridayOpenTime(String value) {
    _fridayOpenTime = value;
    notifyListeners();
  }

  set fridayCloseTime(String value) {
    _fridayCloseTime = value;
    notifyListeners();
  }

  set saturdayOpenTime(String value) {
    _saturdayOpenTime = value;
    notifyListeners();
  }

  set saturdayCloseTime(String value) {
    _saturdayCloseTime = value;
    notifyListeners();
  }

  set sundayOpenTime(String value) {
    _sundayOpenTime = value;
    notifyListeners();
  }

  set sundayCloseTime(String value) {
    _sundayCloseTime = value;
    notifyListeners();
  }

  set chBox24Open(bool value) {
    _chBox24Open = value;
    notifyListeners();
  }

  set chBoxMonday(bool value) {
    _chBoxMonday = value;
    notifyListeners();
  }

  set chBoxTuesday(bool value) {
    _chBoxTuesday = value;
    notifyListeners();
  }

  set chBoxWednesday(bool value) {
    _chBoxWednesday = value;
    notifyListeners();
  }

  set chBoxThursday(bool value) {
    _chBoxThursday = value;
    notifyListeners();
  }

  set chBoxFriday(bool value) {
    _chBoxFriday = value;
    notifyListeners();
  }

  set chBoxSaturday(bool value) {
    _chBoxSaturday = value;
    notifyListeners();
  }

  set chBoxSunday(bool value) {
    _chBoxSunday = value;
    notifyListeners();
  }

  set chBox24Closed(bool value) {
    _chBox24Closed = value;
    notifyListeners();
  }

  set chBoxNoOpen(bool value) {
    _chBoxNoOpen = value;
    notifyListeners();
  }

  set chBoxNoClose(bool value) {
    _chBoxNoClose = value;
    notifyListeners();
  }

  set originalOpenTime(String value) {
    _originalOpenTime = value;
    notifyListeners();
  }

  set originalCloseTime(String value) {
    _originalCloseTime = value;
    notifyListeners();
  }

  set selectedOpenTime(String value) {
    _selectedOpenTime = value;
    notifyListeners();
  }

  set selectedCloseTime(String value) {
    _selectedCloseTime = value;
    notifyListeners();
  }

//Functions
  changeMonday(bool value) {
    chBoxMonday = value;
    notifyListeners();
  }

  changeTuesday(bool value) {
    chBoxTuesday = value;
    notifyListeners();
  }

  changeWednesday(bool value) {
    chBoxWednesday = value;
    notifyListeners();
  }

  changeThursday(bool value) {
    chBoxThursday = value;
    notifyListeners();
  }

  changeFriday(bool value) {
    chBoxFriday = value;
    notifyListeners();
  }

  changeSaturday(bool value) {
    chBoxSaturday = value;
    notifyListeners();
  }

  changeSunday(bool value) {
    chBoxSunday = value;
    notifyListeners();
  }

  change24Open(bool value) {
    chBox24Open = value;
    if (value) {
      chBox24Closed = false;
      selectedOpenTime = "OPEN";
      selectedCloseTime = "OPEN";
    } else {
      selectedOpenTime = originalOpenTime;
      selectedCloseTime = originalCloseTime;
    }
    notifyListeners();
  }

  change24Closed(bool value) {
    chBox24Closed = value;
    if (value) {
      chBox24Open = false;
      selectedOpenTime = "CLOSED";
      selectedCloseTime = "CLOSED";
    } else {
      selectedOpenTime = originalOpenTime;
      selectedCloseTime = originalCloseTime;
    }
    notifyListeners();
  }

  changeNoOpen(bool value) {
    chBoxNoOpen = value;
    if (value) {
      selectedOpenTime = "OPEN";
    } else {
      selectedOpenTime = originalOpenTime;
    }
    notifyListeners();
  }

  changeNoClose(bool value) {
    chBoxNoClose = value;
    if (value) {
      selectedCloseTime = "OPEN";
    } else {
      selectedCloseTime = originalCloseTime;
    }
    notifyListeners();
  }

  changeSelectedOpenTime(String value) {
    selectedOpenTime = value;
    notifyListeners();
  }

  changeSelectedCloseTime(String value) {
    selectedCloseTime = value;
    notifyListeners();
  }

  void finishTimeSetting() {
    if (chBoxMonday == true) {
      mondayOpenTime = selectedOpenTime;
      mondayCloseTime = selectedCloseTime;
      chBoxMonday = false;
    }
    if (chBoxTuesday == true) {
      tuesdayOpenTime = selectedOpenTime;
      tuesdayCloseTime = selectedCloseTime;
      chBoxTuesday = false;
    }
    if (chBoxWednesday == true) {
      wednesdayOpenTime = selectedOpenTime;
      wednesdayCloseTime = selectedCloseTime;
      chBoxWednesday = false;
    }
    if (chBoxThursday == true) {
      thursdayOpenTime = selectedOpenTime;
      thursdayCloseTime = selectedCloseTime;
      chBoxThursday = false;
    }
    if (chBoxFriday == true) {
      fridayOpenTime = selectedOpenTime;
      fridayCloseTime = selectedCloseTime;
      chBoxFriday = false;
    }
    if (chBoxSaturday == true) {
      saturdayOpenTime = selectedOpenTime;
      saturdayCloseTime = selectedCloseTime;
      chBoxSaturday = false;
    }
    if (chBoxSunday == true) {
      sundayOpenTime = selectedOpenTime;
      sundayCloseTime = selectedCloseTime;
      chBoxSunday = false;
    }
    notifyListeners();
  }

  
}
