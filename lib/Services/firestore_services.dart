import 'package:bzoozle/Models/venue.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

//Create Venue
  Future<void>? addVenue(Venue venue) {
    return _db.collection('venues').add(venue.toMap());
  }

//Read Venues
  Stream<List<Venue>> getVenues() {
    return _db.collection('venues').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Venue.fromJson(doc.data())).toList());
  }

//Update Venue
  Future<void>? updateVenue(Venue venue) {
      var options = SetOptions(
          merge:
              true); //ensures that any existing fields are kept in the database
      return _db
          .collection('venues')
          .doc('id')
          .set(venue.toMap(), options);
  }

// Delete venue
  Future<void> removeVenue(String venueId) {
    return _db.collection('venues').doc(venueId).delete();
  }
}
