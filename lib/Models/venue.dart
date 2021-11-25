import 'package:bzoozle/Models/openHours.dart';

class Venue {
  final String? id;
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
  final List<OpenHours>? venueOpenHours;

  Venue(
      {this.id,
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
      this.venueOpenHours});

//Deconstructs a Json map to a venue object
  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
        id: json['id'],
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
        venueOpenHours: json['venueOpenhours']);
  }

//Constructs a Json map from a venue object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'venueName': venueName,
      'venueType': venueType,
      'venueTheme': venueTheme,
      'venueDescription': venueDescription,
      'venueDoornumber': venueDoorNumber,
      'venueStreet': venueStreet,
      'venueHostBuilding': venueHostBuilding,
      'venueArea': venueArea,
      'venueCity': venueCity,
      'venuePostcode': venuePostcode,
      'venueDirections': venueDirections,
      'venueOpenHours': venueOpenHours,
    };
  }
}
