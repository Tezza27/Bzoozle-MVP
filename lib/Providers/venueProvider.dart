// ignore_for_file: unnecessary_getters_setters

import 'package:bzoozle/Models/openHours.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Services/firestore_services.dart';
import 'package:flutter/widgets.dart';

class VenueProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  String _venueName = "Unknown";
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
  List<OpenHours>? _venueOpenHours = List<OpenHours> [
    OpenHours(o)
  ];

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
  List<OpenHours>? get venueOpenHours => _venueOpenHours;
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
    if (value != "N/A") {
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

  set venueOpenHours(List<OpenHours>? value) {
    _venueOpenHours = value;
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
      _venueOpenHours = venueOpenHours;
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
      _venueOpenHours = null;
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
    _venueOpenHours = null;
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
      venueOpenHours: venueOpenHours,
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
      venueOpenHours: venueOpenHours,
    );
    firestoreService.updateVenue(currentVenue);
  }

  removeVenue(String venueId) {
    firestoreService.removeVenue(venueId);
  }
}
