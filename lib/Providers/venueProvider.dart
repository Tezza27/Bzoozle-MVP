// ignore_for_file: unnecessary_getters_setters

import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Services/firestore_services.dart';
import 'package:flutter/widgets.dart';

class VenueProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  String _venueName = "Venue Name";
  String? _venueType;
  String? _venueTheme;
  String? _venueDescription;
  String? _venueDoorNumber;
  String? _venueStreet;
  String? _venueHostBuilding;
  String? _venueArea;
  String? _venueCity;
  String? _venuePostcode;
  String? _venueDirections;
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
  String _originalOpenTime = "?";
  String _originalCloseTime = "?";
  String _selectedOpenTime = "00:00";
  String _selectedCloseTime = "00:00";
  String _openTime0 = "?";
  String _closeTime0 = "?";
  String _openTime1 = "?";
  String _closeTime1 = "?";
  String _openTime2 = "?";
  String _closeTime2 = "?";
  String _openTime3 = "?";
  String _closeTime3 = "?";
  String _openTime4 = "?";
  String _closeTime4 = "?";
  String _openTime5 = "?";
  String _closeTime5 = "?";
  String _openTime6 = "?";
  String _closeTime6 = "?";

  //Getters
  String get venueName => _venueName;
  String? get venueType => _venueType;
  String? get venueTheme => _venueTheme;
  String? get venueDescription => _venueDescription;
  String? get venueDoorNumber => _venueDoorNumber;
  String? get venueStreet => _venueStreet;
  String? get venueHostBuilding => _venueHostBuilding;
  String? get venueArea => _venueArea;
  String? get venueCity => _venueCity;
  String? get venuePostcode => _venuePostcode;
  String? get venueDirections => _venueDirections;
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
  String get openTime0 => _openTime0;
  String get closeTime0 => _closeTime0;
  String get openTime1 => _openTime1;
  String get closeTime1 => _closeTime1;
  String get openTime2 => _openTime2;
  String get closeTime2 => _closeTime2;
  String get openTime3 => _openTime3;
  String get closeTime3 => _closeTime3;
  String get openTime4 => _openTime4;
  String get closeTime4 => _closeTime4;
  String get openTime5 => _openTime5;
  String get closeTime5 => _closeTime5;
  String get openTime6 => _openTime6;
  String get closeTime6 => _closeTime6;
  Stream<List<Venue>> get streamVenuesList => firestoreService.getVenues();

  //Setters
  set changeName(String value) {
    _venueName = value;
    notifyListeners();
  }

  set changeType(String value) {
    _venueType = value;
    notifyListeners();
  }

  set changeTheme(String value) {
    _venueTheme = value;
    notifyListeners();
  }

  set changeDescription(String value) {
    _venueDescription = value;
    notifyListeners();
  }

  set changeDoorNumber(String value) {
    _venueDoorNumber = value;
    notifyListeners();
  }

  set changeStreet(String value) {
    _venueStreet = value;
    notifyListeners();
  }

  set changeHostBuilding(String value) {
    if (value == "N/A") {
      _venueHostBuilding = "";
    } else {
      _venueHostBuilding = value;
    }
    notifyListeners();
  }

  set changeArea(String value) {
    _venueArea = value;
    notifyListeners();
  }

  set changeCity(String value) {
    _venueCity = value;
    notifyListeners();
  }

  set changePostcode(String value) {
    _venuePostcode = value;
    notifyListeners();
  }

  set changeDirections(String value) {
    _venueDirections = value;
    notifyListeners();
  }

  set openTime0(String value) {
    _openTime0 = value;
    notifyListeners();
  }

  set closeTime0(String value) {
    _closeTime0 = value;
    notifyListeners();
  }

  set openTime1(String value) {
    _openTime1 = value;
    notifyListeners();
  }

  set closeTime1(String value) {
    _closeTime1 = value;
    notifyListeners();
  }

  set openTime2(String value) {
    _openTime2 = value;
    notifyListeners();
  }

  set closeTime2(String value) {
    _closeTime2 = value;
    notifyListeners();
  }

  set openTime3(String value) {
    _openTime3 = value;
    notifyListeners();
  }

  set closeTime3(String value) {
    _closeTime3 = value;
    notifyListeners();
  }

  set openTime4(String value) {
    _openTime4 = value;
    notifyListeners();
  }

  set closeTime4(String value) {
    _closeTime4 = value;
    notifyListeners();
  }

  set openTime5(String value) {
    _openTime5 = value;
    notifyListeners();
  }

  set closeTime5(String value) {
    _closeTime5 = value;
    notifyListeners();
  }

  set openTime6(String value) {
    _openTime6 = value;
    notifyListeners();
  }

  set closeTime6(String value) {
    _closeTime6 = value;
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

  //Methods

  loadVenue(Venue? venue) {
    if (venue != null) {
      _venueName = venue.venueName;
      _venueType = venue.venueType;
      _venueTheme = venue.venueTheme;
      _venueDescription = venue.venueDescription;
      _venueDoorNumber = venue.venueDoorNumber;
      _venueStreet = venue.venueStreet;
      _venueHostBuilding = venue.venueHostBuilding;
      _venueArea = venue.venueArea;
      _venueCity = venue.venueCity;
      _venuePostcode = venue.venuePostcode;
      _venueDirections = venue.venueDirections;
      _openTime0 = openTime0;
      _closeTime0 = closeTime0;
      _openTime1 = openTime1;
      _closeTime1 = closeTime1;
      _openTime2 = openTime2;
      _closeTime2 = closeTime2;
      _openTime3 = openTime3;
      _closeTime3 = closeTime3;
      _openTime4 = openTime4;
      _closeTime4 = closeTime4;
      _openTime5 = openTime5;
      _closeTime5 = closeTime5;
      _openTime6 = openTime6;
      _closeTime6 = closeTime6;
    } else {
      _venueName = "New Venue";
      _venueType = null;
      _venueTheme = null;
      _venueDescription = null;
      _venueDoorNumber = null;
      _venueStreet = null;
      _venueHostBuilding = null;
      _venueArea = null;
      _venueCity = null;
      _venuePostcode = null;
      _venueDirections = null;
      _openTime0 = "?";
      _closeTime0 = "?";
      _openTime1 = "?";
      _closeTime1 = "?";
      _openTime2 = "?";
      _closeTime2 = "?";
      _openTime3 = "?";
      _closeTime3 = "?";
      _openTime4 = "?";
      _closeTime4 = "?";
      _openTime5 = "?";
      _closeTime5 = "?";
      _openTime6 = "?";
      _closeTime6 = "?";
    }
  }

  unloadVenue() {
    _venueName = "";
    _venueType = null;
    _venueTheme = null;
    _venueDescription = null;
    _venueDoorNumber = null;
    _venueStreet = null;
    _venueHostBuilding = null;
    _venueArea = null;
    _venueCity = null;
    _venuePostcode = null;
    _venueDirections = null;
    _openTime0 = "?";
    _closeTime0 = "?";
    _openTime1 = "?";
    _closeTime1 = "?";
    _openTime2 = "?";
    _closeTime2 = "?";
    _openTime3 = "?";
    _closeTime3 = "?";
    _openTime4 = "?";
    _closeTime4 = "?";
    _openTime5 = "?";
    _closeTime5 = "?";
    _openTime6 = "?";
    _closeTime6 = "?";
  }

  addVenue() {
    var newVenue = Venue(
      venueName: venueName,
      venueDescription: venueDescription,
      venueType: venueType,
      venueTheme: venueTheme,
      venueDoorNumber: venueDoorNumber,
      venueStreet: venueStreet,
      venueHostBuilding: venueHostBuilding != "N/A" ? venueHostBuilding : null,
      venueArea: venueArea,
      venueCity: venueCity,
      venuePostcode: venuePostcode,
      venueDirections: venueDirections,
      openTime0: openTime0,
      closeTime0: closeTime0,
      openTime1: openTime1,
      closeTime1: closeTime1,
      openTime2: openTime1,
      closeTime2: closeTime2,
      openTime3: openTime3,
      closeTime3: closeTime3,
      openTime4: openTime4,
      closeTime4: closeTime4,
      openTime5: openTime5,
      closeTime5: closeTime5,
      openTime6: openTime6,
      closeTime6: closeTime6,
    );
    firestoreService.addVenue(newVenue);
  }

  updateVenue(String venueId) {
    var currentVenue = Venue(
      venueName: venueName,
      venueDescription: venueDescription,
      venueType: venueType,
      venueTheme: venueTheme,
      venueDoorNumber: venueDoorNumber,
      venueStreet: venueStreet,
      venueHostBuilding: venueHostBuilding != "N/A" ? venueHostBuilding : null,
      venueArea: venueArea,
      venueCity: venueCity,
      venuePostcode: venuePostcode,
      venueDirections: venueDirections,
      openTime0: openTime0,
      closeTime0: closeTime0,
      openTime1: openTime1,
      closeTime1: closeTime1,
      openTime2: openTime1,
      closeTime2: closeTime2,
      openTime3: openTime3,
      closeTime3: closeTime3,
      openTime4: openTime4,
      closeTime4: closeTime4,
      openTime5: openTime5,
      closeTime5: closeTime5,
      openTime6: openTime6,
      closeTime6: closeTime6,
    );
    firestoreService.updateVenue(currentVenue);
  }

  removeVenue(String venueId) {
    firestoreService.removeVenue(venueId);
  }

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
      openTime0 = selectedOpenTime;
      closeTime0 = selectedCloseTime;
      chBoxMonday = false;
    }
    if (chBoxTuesday == true) {
      openTime1 = selectedOpenTime;
      closeTime1 = selectedCloseTime;
      chBoxTuesday = false;
    }
    if (chBoxWednesday == true) {
      openTime2 = selectedOpenTime;
      closeTime2 = selectedCloseTime;
      chBoxWednesday = false;
    }
    if (chBoxThursday == true) {
      openTime3 = selectedOpenTime;
      closeTime3 = selectedCloseTime;
      chBoxThursday = false;
    }
    if (chBoxFriday == true) {
      openTime4 = selectedOpenTime;
      closeTime4 = selectedCloseTime;
      chBoxFriday = false;
    }
    if (chBoxSaturday == true) {
      openTime5 = selectedOpenTime;
      closeTime5 = selectedCloseTime;
      chBoxSaturday = false;
    }
    if (chBoxSunday == true) {
      openTime6 = selectedOpenTime;
      closeTime6 = selectedCloseTime;
      chBoxSunday = false;
    }
    notifyListeners();
  }
}
