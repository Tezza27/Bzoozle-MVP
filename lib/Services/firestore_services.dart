import 'package:bzoozle/Models/venue.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // A reference to top level collection is called venues
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('venues');

  // Use the snapshots method to get a stream of snapshots. This listens for updates automatically.
  Stream<QuerySnapshot> getVenues() {
    return collection.snapshots();
  }

  // Add a new venue. This returns a Future if you want to wait for the result. Note that add will automatically create a new document id for the venue.
  Future<DocumentReference> addVenue(Venue venue) {
    return collection.add(venue.toJson());
  }

  // 4
  updateVenue(Venue venue) async {
    await collection.doc(venue.reference!.id).update(venue.toJson());
  }

  // // Delete venue
//   Future<void> removeVenue(String venueId) {
//     return _db.collection('venues').doc(venueId).delete();
//   }
}
//   FirebaseFirestore _db = FirebaseFirestore.instance;

// //Create Venue
//   Future<void>? addVenue(Venue venue) {
//     return _db.collection('venues').add(venue.toJson());
//   }

// //Read Venues
//   Stream<List<Venue>> getVenues() {
//     return _db.collection('venues').snapshots().map((snapshot) =>
//         snapshot.docs.map((doc) => Venue.fromJson(doc.data())).toList());
//   }

// //Update Venue
//   Future<void>? updateVenue(Venue venue) {
//     var options = SetOptions(
//         merge:
//             true); //ensures that any existing fields are kept in the database
//     return _db.collection('venues').doc('id').set(venue.toJson(), options);
//   }

// // Delete venue
//   Future<void> removeVenue(String venueId) {
//     return _db.collection('venues').doc(venueId).delete();
//   }
//}
