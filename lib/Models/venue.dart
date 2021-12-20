import 'package:bzoozle/Models/happy_hour_session.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//The OpenHours Class with its fields
class OpenHours {
  final String openDay;
  final String openTime;
  final String closeTime;

//Constructor
  OpenHours({
    required this.openDay,
    required this.openTime,
    required this.closeTime,
  });
}

//The Venue Class with its fields
class Venue {
  final String venueName;
  final String? venueType;
  final String? venueTheme;
  final String? venueDescription;
  final String? venueDoorNumber;
  final String? venueStreet;
  final String? venueHostBuilding;
  final String? venueArea;
  final String? venueCity;
  final String? venuePostcode;
  final String? venueDirections;
  final String? openTime0;
  final String? closeTime0;
  final String? openTime1;
  final String? closeTime1;
  final String? openTime2;
  final String? closeTime2;
  final String? openTime3;
  final String? closeTime3;
  final String? openTime4;
  final String? closeTime4;
  final String? openTime5;
  final String? closeTime5;
  final String? openTime6;
  final String? closeTime6;
  List<HappyHourSession>? happyHours = [];

//A reference to a Firestore document representing this venue
  DocumentReference? reference;

//Constructor for the Venue class
  Venue({
    required this.venueName,
    this.venueType,
    this.venueTheme,
    this.venueDescription =
        "Bzoozle has never been here.  Can help by sharing a description?",
    this.venueDoorNumber,
    this.venueStreet,
    this.venueHostBuilding = "",
    this.venueArea,
    this.venueCity,
    this.venuePostcode,
    this.venueDirections,
    this.openTime0,
    this.closeTime0,
    this.openTime1,
    this.closeTime1,
    this.openTime2,
    this.closeTime2,
    this.openTime3,
    this.closeTime3,
    this.openTime4,
    this.closeTime4,
    this.openTime5,
    this.closeTime5,
    this.openTime6,
    this.closeTime6,
    this.happyHours,
  });

//A factory constructor to create a Venue from a Firestore DocumentDnapshot
  factory Venue.fromSnapshot(DocumentSnapshot snapshot) {
    Venue newVenue = Venue.fromJson(snapshot.data() as Map<String, dynamic>);
    newVenue.reference = snapshot.reference;
    return newVenue;
  }

  //A factory constructor to create a Vneue from Json
  factory Venue.fromJson(Map<String, dynamic> json) => _venueFromJson(json);

  //Converts this venue into a map of key/value pairs
  Map<String, dynamic> toJson() => _venueToJson(this);
  @override
  String toString() => "Venue<$venueName>";

//   //Deconstructs a Json map to a venue object
//   factory Venue.fromJson(Map<String, dynamic> json) {
//     return Venue(
//       venueName: json['venueName'],
//       venueType: json['venueType'],
//       venueTheme: json['venueTheme'],
//       venueDescription: json['venueDescription'],
//       venueDoorNumber: json['venueDoorNumber'],
//       venueStreet: json['venueStreet'],
//       venueHostBuilding: json['venueHostBuilding'],
//       venueArea: json['venueArea'],
//       venueCity: json['venueCity'],
//       venuePostcode: json['venuePostcode'],
//       venueDirections: json['venueDirections'],
//       openTime0: json['openTime0'],
//       closeTime0: json['closeTime0'],
//       openTime1: json['openTime1'],
//       closeTime1: json['closeTime1'],
//       openTime2: json['openTime2'],
//       closeTime2: json['closeTime2'],
//       openTime3: json['openTime3'],
//       closeTime3: json['closeTime3'],
//       openTime4: json['openTime4'],
//       closeTime4: json['closeTime4'],
//       openTime5: json['openTime5'],
//       closeTime5: json['closeTime5'],
//       openTime6: json['openTime6'],
//       closeTime6: json['closeTime6'],
//       happyHours: json['happyHours'],
//     );
//   }

// //Constructs a Json map from a venue object
//   Map<String, dynamic> toJson() => {
//         'venueName': this.venueName,
//         'venueType': this.venueType,
//         'venueTheme': this.venueTheme,
//         'venueDescription': this.venueDescription,
//         'venueDoornumber': this.venueDoorNumber,
//         'venueStreet': this.venueStreet,
//         'venueHostBuilding': this.venueHostBuilding,
//         'venueArea': this.venueArea,
//         'venueCity': this.venueCity,
//         'venuePostcode': this.venuePostcode,
//         'venueDirections': this.venueDirections,
//         'openTime0': this.openTime0,
//         'closeTime0': this.closeTime0,
//         'openTime1': this.openTime1,
//         'closeTime1': this.closeTime1,
//         'openTime2': this.openTime2,
//         'closeTime2': this.closeTime2,
//         'openTime3': this.openTime3,
//         'closeTime3': this.closeTime3,
//         'openTime4': this.openTime4,
//         'closeTime4': this.closeTime4,
//         'openTime5': this.openTime5,
//         'closeTime5': this.closeTime5,
//         'openTime6': this.openTime6,
//         'closeTime6': this.closeTime6,
//         'happyHours': this.happyHours,
//       };

// //Converts a Firestore Snapshot to a venue
//   factory Venue.fromSnapshot(DocumentSnapshot snapshot) {
//     final venue = Venue.fromJson(snapshot.data() as Map<String, dynamic>);
//     venue.reference = snapshot.reference;
//     return venue;
//   }
}

// A funtion to convert a map of key/value pairs into a venue
Venue _venueFromJson(Map<String, dynamic> json) {
  return Venue(
      venueName: json['venueName'],
      venueType: json['venueType'],
      venueTheme: json['venueTheme'],
      venueDescription: json['venueDescription'],
      venueDoorNumber: json['venueDoorNumber'],
      venueStreet: json['venueStreet'],
      venueHostBuilding: json['venueHostBuilding'],
      venueArea: json['venueArea'],
      venueCity: json['venueCity'],
      venuePostcode: json['venuePostcode'],
      venueDirections: json['venueDirections'],
      openTime0: json['openTime0'],
      closeTime0: json['closeTime0'],
      openTime1: json['openTime1'],
      closeTime1: json['closeTime1'],
      openTime2: json['openTime2'],
      closeTime2: json['closeTime2'],
      openTime3: json['openTime3'],
      closeTime3: json['closeTime3'],
      openTime4: json['openTime4'],
      closeTime4: json['closeTime4'],
      openTime5: json['openTime5'],
      closeTime5: json['closeTime5'],
      openTime6: json['openTime6'],
      closeTime6: json['closeTime6'],
      happyHours: _convertHappyHourSessions(json['happyHours']));
}

//A function to convert a list of HappyHourSession objects into a list of happy hour sessions
List<HappyHourSession>? _convertHappyHourSessions(List? happyHourMap) {
  if (happyHourMap == null) {
    return null;
  }

  List<HappyHourSession> happyHours =
      happyHourMap.map((value) => HappyHourSession.fromJson(value)).toList();

  /*
   List<HappyHourSession> happyHours = <HappyHourSession>[];
  happyHourMap.forEach((value) {
    happyHours.add(HappyHourSession.fromJson(value));
  });
   */

  return happyHours;
}

//Convert a Venue into a map of key/value pairs
Map<String, dynamic> _venueToJson(Venue instance) => <String, dynamic>{
      'venueName': instance.venueName,
      'venueType': instance.venueType,
      'venueTheme': instance.venueTheme,
      'venueDescription': instance.venueDescription,
      'venueDoornumber': instance.venueDoorNumber,
      'venueStreet': instance.venueStreet,
      'venueHostBuilding': instance.venueHostBuilding,
      'venueArea': instance.venueArea,
      'venueCity': instance.venueCity,
      'venuePostcode': instance.venuePostcode,
      'venueDirections': instance.venueDirections,
      'openTime0': instance.openTime0,
      'closeTime0': instance.closeTime0,
      'openTime1': instance.openTime1,
      'closeTime1': instance.closeTime1,
      'openTime2': instance.openTime2,
      'closeTime2': instance.closeTime2,
      'openTime3': instance.openTime3,
      'closeTime3': instance.closeTime3,
      'openTime4': instance.openTime4,
      'closeTime4': instance.closeTime4,
      'openTime5': instance.openTime5,
      'closeTime5': instance.closeTime5,
      'openTime6': instance.openTime6,
      'closeTime6': instance.closeTime6,
      'happyHours': _happyHourList(instance.happyHours),
    };

//Convert a list of HappyHourSessions into a list of mapped values
List<Map<String, dynamic>>? _happyHourList(List<HappyHourSession>? happyHours) {
  if (happyHours == null) {
    return null;
  }
  List<Map<String, dynamic>> happyHourMap = <Map<String, dynamic>>[];
  for (var happyHour in happyHours) {
    happyHourMap.add(happyHour.toJson());
  }
  return happyHourMap;
}
