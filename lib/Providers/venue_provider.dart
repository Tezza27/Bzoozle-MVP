import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Services/firestore_services.dart';
import 'package:flutter/widgets.dart';
import 'package:uuid/uuid.dart';

class VenueProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  String _venueId = "000";
  String _venueName = "Unknown";
  String? _venueHostBuilding;
  String? _venueDescription;
  var uuid = Uuid();

  //Getters
  String get venueId => _venueId;
  String get venueName => _venueName;
  String? get venueHostBuilding => _venueHostBuilding;
  String? get venueDescription => _venueDescription;
  Stream<List<Venue>> get venues => firestoreService.getVenues();

  //Setters
  changeName(String value) {
    _venueName = value;
    notifyListeners();
  }

  changeHostBuilding(String value) {
    _venueHostBuilding = value;
    notifyListeners();
  }

  changeDescription(String value) {
    _venueDescription = value;
    notifyListeners();
  }

  saveVenue() {
    if (_venueId == '000') {
      var newVenue = Venue(
          venueName: venueName,
          venueDescription: venueDescription,
          venueHostBuilding: venueHostBuilding,
          venueId: uuid.v4());
      firestoreService.saveVenue(newVenue);
    } else {
      var updateVenue = Venue(
          venueName: venueName,
          venueDescription: venueDescription,
          venueHostBuilding: venueHostBuilding,
          venueId: _venueId);
      firestoreService.saveVenue(updateVenue);
    }
  }

  removeVenue(String venueId) {
    firestoreService.removeVenue(venueId);
  }
}
