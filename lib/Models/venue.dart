import 'package:bzoozle/Models/happyHourSession.dart';

class OpenHours {
  final String openDay;
  final String openTime;
  final String closeTime;

  OpenHours({
    required this.openDay,
    required this.openTime,
    required this.closeTime,
  });
}

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
  final List<HappyHourSession>? happyHours;

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

  Map<String, dynamic> toMap() => {
        'venueName': this.venueName,
        'venueType': this.venueType,
        'venueTheme': this.venueTheme,
        'venueDescription': this.venueDescription,
        'venueDoornumber': this.venueDoorNumber,
        'venueStreet': this.venueStreet,
        'venueHostBuilding': this.venueHostBuilding,
        'venueArea': this.venueArea,
        'venueCity': this.venueCity,
        'venuePostcode': this.venuePostcode,
        'venueDirections': this.venueDirections,
        'openTime0': this.openTime0,
        'closeTime0': this.closeTime0,
        'openTime1': this.openTime1,
        'closeTime1': this.closeTime1,
        'openTime2': this.openTime2,
        'closeTime2': this.closeTime2,
        'openTime3': this.openTime3,
        'closeTime3': this.closeTime3,
        'openTime4': this.openTime4,
        'closeTime4': this.closeTime4,
        'openTime5': this.openTime5,
        'closeTime5': this.closeTime5,
        'openTime6': this.openTime6,
        'closeTime6': this.closeTime6,
        'happyHours': this.happyHours,
      };

//Deconstructs a Json map to a venue object
  factory Venue.fromJson(Map<String, dynamic> json) {
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
      happyHours: json['happyHours'],
    );
  }

//Constructs a Json map from a venue object
  // Map<String, dynamic> toMap() {
  //   return {
  //     'venueName': venueName,
  //     'venueType': venueType,
  //     'venueTheme': venueTheme,
  //     'venueDescription': venueDescription,
  //     'venueDoornumber': venueDoorNumber,
  //     'venueStreet': venueStreet,
  //     'venueHostBuilding': venueHostBuilding,
  //     'venueArea': venueArea,
  //     'venueCity': venueCity,
  //     'venuePostcode': venuePostcode,
  //     'venueDirections': venueDirections,
  //     'venueOpenHours': venueOpenHours,
  //   };
  // }
}
