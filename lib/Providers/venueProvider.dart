import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Services/firestore_services.dart';
import 'package:flutter/widgets.dart';

class VenueProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  String _venueName = "Unknown";
  String? _venueHostBuilding;
  String? _venueType;
  String? _venueTheme;
  String? _venueDescription;

  //Getters
  String get venueName => _venueName;
  String? get venueHostBuilding => _venueHostBuilding;
  String? get venueType => _venueType;
  String? get venueTheme => _venueTheme;
  String? get venueDescription => _venueDescription;
  Stream<List<Venue>> get streamVenuesList => firestoreService.getVenues();

  //Setters
  set changeName(String value) {
    _venueName = value;
    notifyListeners();
  }

  set changeHostBuilding(String value) {
    if (value != "N/A") {
      _venueHostBuilding = value;
    }
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

  //Methods

  loadVenue(Venue? venue) {
    if (venue != null) {
      _venueName = venue.venueName;
      _venueHostBuilding = venue.venueHostBuilding;
      _venueType = venue.venueType;
      _venueTheme = venue.venueTheme;
      _venueDescription = venue.venueDescription;
    } else {
      _venueName = "New Venue";
      _venueHostBuilding = null;
      _venueType = null;
      _venueTheme = null;
      _venueDescription = null;
    }
  }

  unloadVenue() {
    _venueName = "";
    _venueHostBuilding = null;
    _venueType = null;
    _venueTheme = null;
    _venueDescription = null;
  }

  addVenue() {
    var newVenue = Venue(
      venueName: venueName,
      venueDescription: venueDescription,
      venueType: venueType,
      venueTheme: venueTheme,
      venueHostBuilding: venueHostBuilding != "N/A" ? venueHostBuilding : null,
    );
    firestoreService.addVenue(newVenue);
  }

  updateVenue() {
    var currentVenue = Venue(
      venueName: venueName,
      venueDescription: venueDescription,
      venueType: venueType,
      venueTheme: venueTheme,
      venueHostBuilding: venueHostBuilding != "N/A" ? venueHostBuilding : null,
    );
    firestoreService.updateVenue(currentVenue);
  }

  removeVenue(String venueId) {
    firestoreService.removeVenue(venueId);
  }
}
