import 'package:bzoozle/Models/confirmation_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//THIS COULD ALL BE REDUNDANT

class ConfirmationFirestoreService {
  // A reference to top level collection called venues
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('confirmations');

  // Use the snapshots method to get a stream of snapshots. This listens for updates automatically.
  Stream<QuerySnapshot> getConfirmations() {
    return collection.snapshots();
  }

  // Add a new venue. This returns a Future if you want to wait for the result. Note that add will automatically create a new document id for the venue.
  Future<DocumentReference> addConfirmation(Confirmation confirmation) async {
    var docRef = await collection.add(confirmation.toJson());
    return docRef;
  }

  // 4
  updateConfirmation(Confirmation currentConfirmation, String venueId) async {
    try {
      await collection
          .doc(venueId)
          .set(currentConfirmation.toJson(), SetOptions(merge: true));
    } catch (e) {
      print(e);
    }
  }

  // // Delete venue
//   Future<void> removeVenue(String venueId) {
//     return _db.collection('venues').doc(venueId).delete();
//   }
}
