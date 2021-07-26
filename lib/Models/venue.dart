class Venue {
  final String venueName;
  final String? venueHostBuilding;
  final String? venueType;
  final String? venueTheme;
  final String? venueDescription;

  Venue(
      {required this.venueName,
      this.venueHostBuilding = "",
      this.venueType,
      this.venueTheme,
      this.venueDescription =
          "Bzoozle has never been here.  Can help by sharing a description?"});

//Deconstructs a Json map to a venue object
  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
      venueName: json['venueName'],
      venueHostBuilding: json['venueHostBuilding'],
      venueType: json['venueType'],
      venueTheme: json['venueTheme'],
      venueDescription: json['venueDescription'],
    );
  }

//Constructs a Json map from a venue object
  Map<String, dynamic> toMap() {
    return {
      'venueName': venueName,
      'venueHostBuilding': venueHostBuilding,
      'venueType': venueType,
      'venueTheme': venueTheme,
      'venueDescription': venueDescription
    };
  }
}
