class Venue {
  final String venueId;
  final String venueName;
  final String? venueHostBuilding;
  final String? venueDescription;

  Venue(
      {required this.venueId,
      required this.venueName,
      this.venueHostBuilding = "",
      this.venueDescription =
          "Bzoozle has never been here.  Can help by sharing a description?"});

//Deconstructs a Json map to a venue object
  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
      venueId: json['venueId'],
      venueName: json['venueName'],
      venueHostBuilding: json['venueHostBuilding'],
      venueDescription: json['venueDescription'],
    );
  }

//Constructs a Json map from a venue object
  Map<String, dynamic> toMap() {
    return {
      'venueId': venueId,
      'venueName': venueName,
      'venueHostBuilding': venueHostBuilding,
      'venueDescription': venueDescription
    };
  }
}
