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
  final String? venueId;
  final String venueName;
  final String? venueType;
  final String? venueTheme;
  final String? venueDescription;
  final String? venueDoorNumber;
  final String? unitNumber;
  final String? venueStreet;
  final String? venueHostBuilding;
  final String? venueArea;
  final String? venueCity;
  final String? venuePostcode;
  final double? lat;
  final double? lon;
  final String? venueDirections;
  final String? venueImage;
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
  //Facilities attributes
  final String? indoor;
  final String? outdoor;
  final String? rooftop;
  final String? settingCom;
  final String? breakfast;
  final String? lunch;
  final String? dinner;
  final String? late;
  final String? foodCom;
  final String? wifi;
  final String? password;
  final String? wifiCom;
  final String? live;
  final String? dj;
  final String? recorded;
  final String? karaoke;
  final String? entertainmentCom;
  final String? gambling;
  final String? board;
  final String? video;
  final String? pub;
  final String? gamesCom;
  final String? parking;
  final String? parkingCom;
  final String? access;
  final String? accessCom;
//Policy attributes
  final String? dressCode;
  final String? dressCodeCom;
  final String? coverCharge;
  final String? coverChargeCom;
  final String? smoking;
  final String? smokingCom;
  final String? child;
  final String? childCom;
//Pricing attributes
  final String? fees;
  final String? feesCom;
  final int? priceGuide;
  final String? priceCom;
  final String? beerDom;
  final String? beerImp;
  final String? beerDraft;
  final String? well;
  final String? call;
  final String? cocktail;
  final String? wine;
  final String? bottle;
  final String? bEntree;
  final String? lEntree;
  final String? dEntree;
  final String? lateEntree;
  final String? beerDomCom;
  final String? beerImpCom;
  final String? beerDraftCom;
  final String? wellCom;
  final String? callCom;
  final String? cocktailCom;
  final String? wineCom;
  final String? bottleCom;
  final String? bEntreeCom;
  final String? lEntreeCom;
  final String? dEntreeCom;
  final String? lateEntreeCom;
  List<HappyHourSession>? happyHours = [];
  final String? hhOffer;

//A reference to a Firestore document representing this venue
  DocumentReference? reference;

//Constructor for the Venue class
  Venue(
      {this.venueId,
      required this.venueName,
      this.venueType,
      this.venueTheme,
      this.venueDescription =
          "Bzoozle has never been here.  Can help by sharing a description?",
      this.venueDoorNumber,
      this.unitNumber,
      this.venueStreet,
      this.venueHostBuilding = "",
      this.venueArea,
      this.venueCity,
      this.venuePostcode,
      this.lat,
      this.lon,
      this.venueDirections,
      this.venueImage,
      this.openTime0 = "?",
      this.closeTime0 = "?",
      this.openTime1 = "?",
      this.closeTime1 = "?",
      this.openTime2 = "?",
      this.closeTime2 = "?",
      this.openTime3 = "?",
      this.closeTime3 = "?",
      this.openTime4 = "?",
      this.closeTime4 = "?",
      this.openTime5 = "?",
      this.closeTime5 = "?",
      this.openTime6 = "?",
      this.closeTime6 = "?",
      //Facilities attributes
      this.indoor = "No",
      this.outdoor = "No",
      this.rooftop = "No",
      this.settingCom = "",
      this.breakfast = "No",
      this.lunch = "No",
      this.dinner = "No",
      this.late = "No",
      this.foodCom = "",
      this.wifi = "None",
      this.password = "",
      this.wifiCom = "",
      this.live = "No",
      this.dj = "No",
      this.recorded = "No",
      this.karaoke = "No",
      this.entertainmentCom = "",
      this.gambling = "No",
      this.board = "No",
      this.video = "No",
      this.pub = "No",
      this.gamesCom = "",
      this.parking = "None",
      this.parkingCom = "",
      this.access = "Average",
      this.accessCom = "",
//Policy attributes
      this.dressCode = "None",
      this.dressCodeCom = "",
      this.coverCharge = "Never",
      this.coverChargeCom = "",
      this.smoking = "Permitted",
      this.smokingCom = "",
      this.child = "No",
      this.childCom = "",
//Pricing attributes
      this.fees = "No",
      this.feesCom = "",
      this.priceGuide = 2,
      this.priceCom = "",
      this.beerDom = "",
      this.beerImp = "",
      this.beerDraft = "",
      this.well = "",
      this.call = "",
      this.cocktail = "",
      this.wine = "",
      this.bottle = "",
      this.bEntree = "",
      this.lEntree = "",
      this.dEntree = "",
      this.lateEntree = "",
      this.beerDomCom = "",
      this.beerImpCom = "",
      this.beerDraftCom = "",
      this.wellCom = "",
      this.callCom = "",
      this.cocktailCom = "",
      this.wineCom = "",
      this.bottleCom = "",
      this.bEntreeCom = "",
      this.lEntreeCom = "",
      this.dEntreeCom = "",
      this.lateEntreeCom = "",
      this.happyHours,
      this.hhOffer});

//A factory constructor to create a Venue from a Firestore DocumentDnapshot
  factory Venue.fromSnapshot(DocumentSnapshot snapshot) {
    Venue newVenue = Venue.fromJson(snapshot.data() as Map<String, dynamic>);
    newVenue.reference = snapshot.reference;
    return newVenue;
  }

  //A factory constructor to create a Venue from Json
  factory Venue.fromJson(Map<String, dynamic> json) => _venueFromJson(json);

  //Converts this venue into a map of key/value pairs
  Map<String, dynamic> toJson() => _venueToJson(this);
  @override
  String toString() => "Venue<$venueName>";
}

// A funtion to convert a map of key/value pairs into a venue
Venue _venueFromJson(Map<String, dynamic> json) {
  return Venue(
      venueName: json['venueName'],
      venueType: json['venueType'],
      venueTheme: json['venueTheme'],
      venueDescription: json['venueDescription'],
      venueDoorNumber: json['venueDoorNumber'],
      unitNumber: json['unitNumber'],
      venueStreet: json['venueStreet'],
      venueHostBuilding: json['venueHostBuilding'],
      venueArea: json['venueArea'],
      venueCity: json['venueCity'],
      venuePostcode: json['venuePostcode'],
      lat: json['lat'],
      lon: json['lon'],
      venueDirections: json['venueDirections'],
      venueImage: json['venueImage'],
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
      //Facilities attributes
      indoor: json['indoor'],
      outdoor: json['outdoor'],
      rooftop: json['rooftop'],
      settingCom: json['settingCom'],
      breakfast: json['breakfast'],
      lunch: json['lunch'],
      dinner: json['dinner'],
      late: json['late'],
      foodCom: json['foodCom'],
      wifi: json['wifi'],
      password: json['password'],
      wifiCom: json['wifiCom'],
      live: json['live'],
      dj: json['dj'],
      recorded: json['recorded'],
      karaoke: json['karaoke'],
      entertainmentCom: json['entertainmentCom'],
      gambling: json['gambling'],
      board: json['board'],
      video: json['video'],
      pub: json['pub'],
      gamesCom: json['gamesCom'],
      parking: json['parking'],
      parkingCom: json['parkingCom'],
      access: json['access'],
      accessCom: json['accessCom'],
//Policy attributes
      dressCode: json['dressCode'],
      dressCodeCom: json['dressCodeCom'],
      coverCharge: json['coverCharge'],
      coverChargeCom: json['coverChargeCom'],
      smoking: json['smoking'],
      smokingCom: json['smokingCom'],
      child: json['child'],
      childCom: json['childCom'],
//Pricing attributes
      fees: json['fees'],
      feesCom: json['feesCom'],
      priceGuide: json['priceGuide'],
      priceCom: json['priceCom'],
      beerDom: json['beerDom'],
      beerImp: json['beerImp'],
      beerDraft: json['beerDraft'],
      well: json['well'],
      call: json['call'],
      cocktail: json['cocktail'],
      wine: json['wine'],
      bottle: json['bottle'],
      bEntree: json['bEntree'],
      lEntree: json['lEntree'],
      dEntree: json['dEntree'],
      lateEntree: json['lateEntree'],
      beerDomCom: json['beerDomCom'],
      beerImpCom: json['beerImpCom'],
      beerDraftCom: json['beerDraftCom'],
      wellCom: json['wellCom'],
      callCom: json['callCom'],
      cocktailCom: json['cocktailCom'],
      wineCom: json['wineCom'],
      bottleCom: json['bottleCom'],
      bEntreeCom: json['bEntreeCom'],
      lEntreeCom: json['lEntreeCom'],
      dEntreeCom: json['dEntreeCom'],
      lateEntreeCom: json['lateEntreeCom'],
      hhOffer: json['hhOffer'],
      happyHours: _convertHappyHourSessions(json['happyHours']));
}

//A function to convert a list of HappyHourSession objects into a list of happy hour sessions
List<HappyHourSession>? _convertHappyHourSessions(List? happyHourMap) {
  if (happyHourMap == null) {
    return null;
  }

  List<HappyHourSession> happyHours =
      happyHourMap.map((value) => HappyHourSession.fromJson(value)).toList();
  return happyHours;
}

//Convert a Venue into a map of key/value pairs
Map<String, dynamic> _venueToJson(Venue instance) => <String, dynamic>{
      'venueName': instance.venueName,
      'venueType': instance.venueType,
      'venueTheme': instance.venueTheme,
      'venueDescription': instance.venueDescription,
      'venueDoornumber': instance.venueDoorNumber,
      'unitNumber': instance.unitNumber,
      'venueStreet': instance.venueStreet,
      'venueHostBuilding': instance.venueHostBuilding,
      'venueArea': instance.venueArea,
      'venueCity': instance.venueCity,
      'venuePostcode': instance.venuePostcode,
      'lat': instance.lat,
      'lon': instance.lon,
      'venueDirections': instance.venueDirections,
      'venueImage': instance.venueImage,
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
      //Facilities attributes
      'indoor': instance.indoor,
      'outdoor': instance.outdoor,
      'rooftop': instance.rooftop,
      'settingCom': instance.settingCom,
      'breakfast': instance.breakfast,
      'lunch': instance.lunch,
      'dinner': instance.dinner,
      'late': instance.late,
      'foodCom': instance.foodCom,
      'wifi': instance.wifi,
      'password': instance.password,
      'wifiCom': instance.wifiCom,
      'live': instance.live,
      'dj': instance.dj,
      'recorded': instance.recorded,
      'karaoke': instance.karaoke,
      'entertainmentCom': instance.entertainmentCom,
      'gambling': instance.gambling,
      'board': instance.board,
      'video': instance.video,
      'pub': instance.pub,
      'gamesCom': instance.gamesCom,
      'parking': instance.parking,
      'parkingCom': instance.parkingCom,
      'access': instance.access,
      'accessCom': instance.accessCom,
//Policy attributes
      'dressCode': instance.dressCode,
      'dressCodeCom': instance.dressCodeCom,
      'coverCharge': instance.coverCharge,
      'coverChargeCom': instance.coverChargeCom,
      'smoking': instance.smoking,
      'smokingCom': instance.smokingCom,
      'child': instance.child,
      'childCom': instance.childCom,
//Pricing attributes
      'fees': instance.fees,
      'feesCom': instance.feesCom,
      'priceGuide': instance.priceGuide,
      'priceCom': instance.priceCom,
      'beerDom': instance.beerDom,
      'beerImp': instance.beerImp,
      'beerDraft': instance.beerDraft,
      'well': instance.well,
      'call': instance.call,
      'cocktail': instance.cocktail,
      'wine': instance.wine,
      'bottle': instance.bottle,
      'bEntree': instance.bEntree,
      'lEntree': instance.lEntree,
      'dEntree': instance.dEntree,
      'lateEntree': instance.lateEntree,
      'beerDomCom': instance.beerDomCom,
      'beerImpCom': instance.beerImpCom,
      'beerDraftCom': instance.beerDraftCom,
      'wellCom': instance.wellCom,
      'callCom': instance.callCom,
      'cocktailCom': instance.cocktailCom,
      'wineCom': instance.wineCom,
      'bottleCom': instance.bottleCom,
      'bEntreeCom': instance.bEntreeCom,
      'lEntreeCom': instance.lEntreeCom,
      'dEntreeCom': instance.dEntreeCom,
      'lateEntreeCom': instance.lateEntreeCom,
      'hhOffer': instance.hhOffer,
      'happyHours': _happyHourList(instance.happyHours),
    };

//Convert a list of HappyHourSessions into a list of mapped values
List<Map<String, dynamic>>? _happyHourList(List<HappyHourSession>? happyHours) {
  if (happyHours == null) {
    return null;
  }
  List<Map<String, dynamic>>? happyHourMap = <Map<String, dynamic>>[];
  for (var happyHour in happyHours) {
    happyHourMap.add(happyHour.toJson());
  }
  return happyHourMap;
}
