import 'package:bzoozle/Models/venue.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // A reference to top level collection called venues
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('venues');

  // Use the snapshots method to get a stream of snapshots. This listens for updates automatically.
  Stream<QuerySnapshot> getVenues() {
    return collection.snapshots();
  }

  // Add a new venue. This returns a Future if you want to wait for the result. Note that add will automatically create a new document id for the venue.
  Future<DocumentReference> addVenue(Venue venue) async {
    var docRef = await collection.add(venue.toJson());
    //venueProvider.venueId = docRef.documentID;
    return docRef;
  }

  // 4
  updateVenue(Venue venue, String venueId) async {
    try {
      await collection.doc(venueId).update(venue.toJson());
    } catch (e) {
      print(e);
    }
  }

  // // Delete venue
//   Future<void> removeVenue(String venueId) {
//     return _db.collection('venues').doc(venueId).delete();
//   }
}
