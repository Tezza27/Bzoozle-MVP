import 'package:cloud_firestore/cloud_firestore.dart';

//The HappyHourSession Class with it's fields
class HappyHourSession {
  final String day;
  final String startTime;
  final int duration;
  //final String? offerSet;

//A reference to a Firestore document representing this happy hour session
  DocumentReference? reference;

//Constructor
  HappyHourSession({
    required this.day,
    required this.startTime,
    required this.duration,
    //this.offerSet,
  });

//A factory constructor to create a Happy Hour Session from Json
  factory HappyHourSession.fromJson(Map<dynamic, dynamic> json) =>
      _happyHourSessionFromJson(json);

//Convert happy hour instance into a map of key/value pairs
  Map<String, dynamic> toJson() => _happyHourSessionToJson(this);
  @override
  String toString() => "HappyHoursSession<$day>";
}

//Returns a map of values from Firstore into a HappyHourSession Class
HappyHourSession _happyHourSessionFromJson(Map<dynamic, dynamic> json) {
  return HappyHourSession(
    day: json['day'] as String,
    startTime: json['startTime'] as String,
    duration: json['duration'] as int,
  );
}

//Converts the HappyHourSession Class into a map of key/value pairs
Map<String, dynamic> _happyHourSessionToJson(HappyHourSession instance) =>
    <String, dynamic>{
      'day': instance.day,
      'startTime': instance.startTime,
      'duration': instance.duration,
    };
