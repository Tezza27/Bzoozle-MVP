import 'package:cloud_firestore/cloud_firestore.dart';

class Confirmation {
  final String? venueId;
  final String? descriptionUDate;
  final String? descriptionUName;
  final String? descriptionULocation;
  final String? descriptionUImage;
  final String? descriptionCDate;
  final String? descriptionCName;
  final String? descriptionCLocation;
  final String? descriptionCImage;
  final String? locationUDate;
  final String? locationUName;
  final String? locationULocation;
  final String? locationUImage;
  final String? locationCDate;
  final String? locationCName;
  final String? locationCLocation;
  final String? locationCImage;
  final String? openHoursUDate;
  final String? openHoursUName;
  final String? openHoursULocation;
  final String? openHoursUImage;
  final String? openHoursCDate;
  final String? openHoursCName;
  final String? openHoursCLocation;
  final String? openHoursCImage;
  final String? settingUDate;
  final String? settingUName;
  final String? settingULocation;
  final String? settingUImage;
  final String? settingCDate;
  final String? settingCName;
  final String? settingCLocation;
  final String? settingCImage;
  final String? foodUDate;
  final String? foodUName;
  final String? foodULocation;
  final String? foodUImage;
  final String? foodCDate;
  final String? foodCName;
  final String? foodCLocation;
  final String? foodCImage;
  final String? wifiUDate;
  final String? wifiUName;
  final String? wifiULocation;
  final String? wifiUImage;
  final String? wifiCDate;
  final String? wifiCName;
  final String? wifiCLocation;
  final String? wifiCImage;
  final String? entertainmentUDate;
  final String? entertainmentUName;
  final String? entertainmentULocation;
  final String? entertainmentUImage;
  final String? entertainmentCDate;
  final String? entertainmentCName;
  final String? entertainmentCLocation;
  final String? entertainmentCImage;
  final String? gamesUDate;
  final String? gamesUName;
  final String? gamesULocation;
  final String? gamesUImage;
  final String? gamesCDate;
  final String? gamesCName;
  final String? gamesCLocation;
  final String? gamesCImage;
  final String? parkingUDate;
  final String? parkingUName;
  final String? parkingULocation;
  final String? parkingUImage;
  final String? parkingCDate;
  final String? parkingCName;
  final String? parkingCLocation;
  final String? parkingCImage;
  final String? accessUDate;
  final String? accessUName;
  final String? accessULocation;
  final String? accessUImage;
  final String? accessCDate;
  final String? accessCName;
  final String? accessCLocation;
  final String? accessCImage;
  final String? dressCodeUDate;
  final String? dressCodeUName;
  final String? dressCodeULocation;
  final String? dressCodeUImage;
  final String? dressCodeCDate;
  final String? dressCodeCName;
  final String? dressCodeCLocation;
  final String? dressCodeCImage;
  final String? coverChargeUDate;
  final String? coverChargeUName;
  final String? coverChargeULocation;
  final String? coverChargeUImage;
  final String? coverChargeCDate;
  final String? coverChargeCName;
  final String? coverChargeCLocation;
  final String? coverChargeCImage;
  final String? smokingUDate;
  final String? smokingUName;
  final String? smokingULocation;
  final String? smokingUImage;
  final String? smokingCDate;
  final String? smokingCName;
  final String? smokingCLocation;
  final String? smokingCImage;
  final String? childUDate;
  final String? childUName;
  final String? childULocation;
  final String? childUImage;
  final String? childCDate;
  final String? childCName;
  final String? childCLocation;
  final String? childCImage;
  final String? happyHourUDate;
  final String? happyHourUName;
  final String? happyHourULocation;
  final String? happyHourUImage;
  final String? happyHourCDate;
  final String? happyHourCName;
  final String? happyHourCLocation;
  final String? happyHourCImage;
  final String? feesUDate;
  final String? feesUName;
  final String? feesULocation;
  final String? feesUImage;
  final String? feesCDate;
  final String? feesCName;
  final String? feesCLocation;
  final String? feesCImage;
  final String? priceUDate;
  final String? priceUName;
  final String? priceULocation;
  final String? priceUImage;
  final String? priceCDate;
  final String? priceCName;
  final String? priceCLocation;
  final String? priceCImage;
  final String? beerDomUDate;
  final String? beerDomUName;
  final String? beerDomULocation;
  final String? beerDomUImage;
  final String? beerDomCDate;
  final String? beerDomCName;
  final String? beerDomCLocation;
  final String? beerDomCImage;
  final String? beerImpUDate;
  final String? beerImpUName;
  final String? beerImpULocation;
  final String? beerImpUImage;
  final String? beerImpCDate;
  final String? beerImpCName;
  final String? beerImpCLocation;
  final String? beerImpCImage;
  final String? beerDraftUDate;
  final String? beerDraftUName;
  final String? beerDraftULocation;
  final String? beerDraftUImage;
  final String? beerDraftCDate;
  final String? beerDraftCName;
  final String? beerDraftCLocation;
  final String? beerDraftCImage;
  final String? wellUDate;
  final String? wellUName;
  final String? wellULocation;
  final String? wellUImage;
  final String? wellCDate;
  final String? wellCName;
  final String? wellCLocation;
  final String? wellCImage;
  final String? callUDate;
  final String? callUName;
  final String? callULocation;
  final String? callUImage;
  final String? callCDate;
  final String? callCName;
  final String? callCLocation;
  final String? callCImage;
  final String? cocktailUDate;
  final String? cocktailUName;
  final String? cocktailULocation;
  final String? cocktailUImage;
  final String? cocktailCDate;
  final String? cocktailCName;
  final String? cocktailCLocation;
  final String? cocktailCImage;
  final String? wineUDate;
  final String? wineUName;
  final String? wineULocation;
  final String? wineUImage;
  final String? wineCDate;
  final String? wineCName;
  final String? wineCLocation;
  final String? wineCImage;
  final String? bottleUDate;
  final String? bottleUName;
  final String? bottleULocation;
  final String? bottleUImage;
  final String? bottleCDate;
  final String? bottleCName;
  final String? bottleCLocation;
  final String? bottleCImage;
  final String? breakfastUDate;
  final String? breakfastUName;
  final String? breakfastULocation;
  final String? breakfastUImage;
  final String? breakfastCDate;
  final String? breakfastCName;
  final String? breakfastCLocation;
  final String? breakfastCImage;
  final String? lunchUDate;
  final String? lunchUName;
  final String? lunchULocation;
  final String? lunchUImage;
  final String? lunchCDate;
  final String? lunchCName;
  final String? lunchCLocation;
  final String? lunchCImage;
  final String? dinnerUDate;
  final String? dinnerUName;
  final String? dinnerULocation;
  final String? dinnerUImage;
  final String? dinnerCDate;
  final String? dinnerCName;
  final String? dinnerCLocation;
  final String? dinnerCImage;
  final String? lateUDate;
  final String? lateUName;
  final String? lateULocation;
  final String? lateUImage;
  final String? lateCDate;
  final String? lateCName;
  final String? lateCLocation;
  final String? lateCImage;

  Confirmation({
    this.venueId,
    this.descriptionUDate,
    this.descriptionUName,
    this.descriptionULocation,
    this.descriptionUImage,
    this.descriptionCDate,
    this.descriptionCName,
    this.descriptionCLocation,
    this.descriptionCImage,
    this.locationUDate,
    this.locationUName,
    this.locationULocation,
    this.locationUImage,
    this.locationCDate,
    this.locationCName,
    this.locationCLocation,
    this.locationCImage,
    this.openHoursUDate,
    this.openHoursUName,
    this.openHoursULocation,
    this.openHoursUImage,
    this.openHoursCDate,
    this.openHoursCName,
    this.openHoursCLocation,
    this.openHoursCImage,
    this.settingUDate,
    this.settingUName,
    this.settingULocation,
    this.settingUImage,
    this.settingCDate,
    this.settingCName,
    this.settingCLocation,
    this.settingCImage,
    this.foodUDate,
    this.foodUName,
    this.foodULocation,
    this.foodUImage,
    this.foodCDate,
    this.foodCName,
    this.foodCLocation,
    this.foodCImage,
    this.wifiUDate,
    this.wifiUName,
    this.wifiULocation,
    this.wifiUImage,
    this.wifiCDate,
    this.wifiCName,
    this.wifiCLocation,
    this.wifiCImage,
    this.entertainmentUDate,
    this.entertainmentUName,
    this.entertainmentULocation,
    this.entertainmentUImage,
    this.entertainmentCDate,
    this.entertainmentCName,
    this.entertainmentCLocation,
    this.entertainmentCImage,
    this.gamesUDate,
    this.gamesUName,
    this.gamesULocation,
    this.gamesUImage,
    this.gamesCDate,
    this.gamesCName,
    this.gamesCLocation,
    this.gamesCImage,
    this.parkingUDate,
    this.parkingUName,
    this.parkingULocation,
    this.parkingUImage,
    this.parkingCDate,
    this.parkingCName,
    this.parkingCLocation,
    this.parkingCImage,
    this.accessUDate,
    this.accessUName,
    this.accessULocation,
    this.accessUImage,
    this.accessCDate,
    this.accessCName,
    this.accessCLocation,
    this.accessCImage,
    this.dressCodeUDate,
    this.dressCodeUName,
    this.dressCodeULocation,
    this.dressCodeUImage,
    this.dressCodeCDate,
    this.dressCodeCName,
    this.dressCodeCLocation,
    this.dressCodeCImage,
    this.coverChargeUDate,
    this.coverChargeUName,
    this.coverChargeULocation,
    this.coverChargeUImage,
    this.coverChargeCDate,
    this.coverChargeCName,
    this.coverChargeCLocation,
    this.coverChargeCImage,
    this.smokingUDate,
    this.smokingUName,
    this.smokingULocation,
    this.smokingUImage,
    this.smokingCDate,
    this.smokingCName,
    this.smokingCLocation,
    this.smokingCImage,
    this.childUDate,
    this.childUName,
    this.childULocation,
    this.childUImage,
    this.childCDate,
    this.childCName,
    this.childCLocation,
    this.childCImage,
    this.happyHourUDate,
    this.happyHourUName,
    this.happyHourULocation,
    this.happyHourUImage,
    this.happyHourCDate,
    this.happyHourCName,
    this.happyHourCLocation,
    this.happyHourCImage,
    this.feesUDate,
    this.feesUName,
    this.feesULocation,
    this.feesUImage,
    this.feesCDate,
    this.feesCName,
    this.feesCLocation,
    this.feesCImage,
    this.priceUDate,
    this.priceUName,
    this.priceULocation,
    this.priceUImage,
    this.priceCDate,
    this.priceCName,
    this.priceCLocation,
    this.priceCImage,
    this.beerDomUDate,
    this.beerDomUName,
    this.beerDomULocation,
    this.beerDomUImage,
    this.beerDomCDate,
    this.beerDomCName,
    this.beerDomCLocation,
    this.beerDomCImage,
    this.beerImpUDate,
    this.beerImpUName,
    this.beerImpULocation,
    this.beerImpUImage,
    this.beerImpCDate,
    this.beerImpCName,
    this.beerImpCLocation,
    this.beerImpCImage,
    this.beerDraftUDate,
    this.beerDraftUName,
    this.beerDraftULocation,
    this.beerDraftUImage,
    this.beerDraftCDate,
    this.beerDraftCName,
    this.beerDraftCLocation,
    this.beerDraftCImage,
    this.wellUDate,
    this.wellUName,
    this.wellULocation,
    this.wellUImage,
    this.wellCDate,
    this.wellCName,
    this.wellCLocation,
    this.wellCImage,
    this.callUDate,
    this.callUName,
    this.callULocation,
    this.callUImage,
    this.callCDate,
    this.callCName,
    this.callCLocation,
    this.callCImage,
    this.cocktailUDate,
    this.cocktailUName,
    this.cocktailULocation,
    this.cocktailUImage,
    this.cocktailCDate,
    this.cocktailCName,
    this.cocktailCLocation,
    this.cocktailCImage,
    this.wineUDate,
    this.wineUName,
    this.wineULocation,
    this.wineUImage,
    this.wineCDate,
    this.wineCName,
    this.wineCLocation,
    this.wineCImage,
    this.bottleUDate,
    this.bottleUName,
    this.bottleULocation,
    this.bottleUImage,
    this.bottleCDate,
    this.bottleCName,
    this.bottleCLocation,
    this.bottleCImage,
    this.breakfastUDate,
    this.breakfastUName,
    this.breakfastULocation,
    this.breakfastUImage,
    this.breakfastCDate,
    this.breakfastCName,
    this.breakfastCLocation,
    this.breakfastCImage,
    this.lunchUDate,
    this.lunchUName,
    this.lunchULocation,
    this.lunchUImage,
    this.lunchCDate,
    this.lunchCName,
    this.lunchCLocation,
    this.lunchCImage,
    this.dinnerUDate,
    this.dinnerUName,
    this.dinnerULocation,
    this.dinnerUImage,
    this.dinnerCDate,
    this.dinnerCName,
    this.dinnerCLocation,
    this.dinnerCImage,
    this.lateUDate,
    this.lateUName,
    this.lateULocation,
    this.lateUImage,
    this.lateCDate,
    this.lateCName,
    this.lateCLocation,
    this.lateCImage,
  });

//A reference to a Firestore document representing this venue
  DocumentReference? reference;

//A factory constructor to create a Venue's confirmation set from a Firestore DocumentDnapshot
  factory Confirmation.fromSnapshot(DocumentSnapshot snapshot) {
    Confirmation newConfirmation =
        Confirmation.fromJson(snapshot.data() as Map<String, dynamic>);
    newConfirmation.reference = snapshot.reference;
    return newConfirmation;
  }

  //A factory constructor to create a Venue confirmation set from Json
  factory Confirmation.fromJson(Map<String, dynamic> json) =>
      _confirmationFromJson(json);

  //Converts this venue confirmation set into a map of key/value pairs
  Map<String, dynamic> toJson() => _confirmationToJson(this);
  @override
  String toString() => "Confirmation<$venueId>";
}

// A funtion to convert a map of key/value pairs into a venue confirmation set
Confirmation _confirmationFromJson(Map<String, dynamic> json) {
  return Confirmation(
    descriptionUDate: json['descriptionUDate'],
    descriptionUName: json['descriptionUName'],
    descriptionULocation: json['descriptionULocation'],
    descriptionUImage: json['descriptionUImage'],
    descriptionCDate: json['descriptionCDate'],
    descriptionCName: json['descriptionCName'],
    descriptionCLocation: json['descriptionCLocation'],
    descriptionCImage: json['descriptionCImage'],
    locationUDate: json['locationUDate'],
    locationUName: json['locationUName'],
    locationULocation: json['locationULocation'],
    locationUImage: json['locationUImage'],
    locationCDate: json['locationCDate'],
    locationCName: json['locationCName'],
    locationCLocation: json['locationCLocation'],
    locationCImage: json['locationCImage'],
    openHoursUDate: json['openHoursUDate'],
    openHoursUName: json['openHoursUName'],
    openHoursULocation: json['openHoursULocation'],
    openHoursUImage: json['openHoursUImage'],
    openHoursCDate: json['openHoursCDate'],
    openHoursCName: json['openHoursCName'],
    openHoursCLocation: json['openHoursCLocation'],
    openHoursCImage: json['openHoursCImage'],
    settingUDate: json['settingUDate'],
    settingUName: json['settingUName'],
    settingULocation: json['settingULocation'],
    settingUImage: json['settingUImage'],
    settingCDate: json['settingCDate'],
    settingCName: json['settingCName'],
    settingCLocation: json['settingCLocation'],
    settingCImage: json['settingCImage'],
    foodUDate: json['foodUDate'],
    foodUName: json['foodUName'],
    foodULocation: json['foodULocation'],
    foodUImage: json['foodUImage'],
    foodCDate: json['foodCDate'],
    foodCName: json['foodCName'],
    foodCLocation: json['foodCLocation'],
    foodCImage: json['foodCImage'],
    wifiUDate: json['wifiUDate'],
    wifiUName: json['wifiUName'],
    wifiULocation: json['wifiULocation'],
    wifiUImage: json['wifiUImage'],
    wifiCDate: json['wifiCDate'],
    wifiCName: json['wifiCName'],
    wifiCLocation: json['wifiCLocation'],
    wifiCImage: json['wifiCImage'],
    entertainmentUDate: json['entertainmentUDate'],
    entertainmentUName: json['entertainmentUName'],
    entertainmentULocation: json['entertainmentULocation'],
    entertainmentUImage: json['entertainmentUImage'],
    entertainmentCDate: json['entertainmentCDate'],
    entertainmentCName: json['entertainmentCName'],
    entertainmentCLocation: json['entertainmentCLocation'],
    entertainmentCImage: json['entertainmentCImage'],
    gamesUDate: json['gamesUDate'],
    gamesUName: json['gamesUName'],
    gamesULocation: json['gamesULocation'],
    gamesUImage: json['gamesUImage'],
    gamesCDate: json['gamesCDate'],
    gamesCName: json['gamesCName'],
    gamesCLocation: json['gamesCLocation'],
    gamesCImage: json['gamesCImage'],
    parkingUDate: json['parkingUDate'],
    parkingUName: json['parkingUName'],
    parkingULocation: json['parkingULocation'],
    parkingUImage: json['parkingUImage'],
    parkingCDate: json['parkingCDate'],
    parkingCName: json['parkingCName'],
    parkingCLocation: json['parkingCLocation'],
    parkingCImage: json['parkingCImage'],
    accessUDate: json['accessUDate'],
    accessUName: json['accessUName'],
    accessULocation: json['accessULocation'],
    accessUImage: json['accessUImage'],
    accessCDate: json['accessCDate'],
    accessCName: json['accessCName'],
    accessCLocation: json['accessCLocation'],
    accessCImage: json['accessCImage'],
    dressCodeUDate: json['dressCodeUDate'],
    dressCodeUName: json['dressCodeUName'],
    dressCodeULocation: json['dressCodeULocation'],
    dressCodeUImage: json['dressCodeUImage'],
    dressCodeCDate: json['dressCodeCDate'],
    dressCodeCName: json['dressCodeCName'],
    dressCodeCLocation: json['dressCodeCLocation'],
    dressCodeCImage: json['dressCodeCImage'],
    coverChargeUDate: json['coverChargeUDate'],
    coverChargeUName: json['coverChargeUName'],
    coverChargeULocation: json['coverChargeULocation'],
    coverChargeUImage: json['coverChargeUImage'],
    coverChargeCDate: json['coverChargeCDate'],
    coverChargeCName: json['coverChargeCName'],
    coverChargeCLocation: json['coverChargeCLocation'],
    coverChargeCImage: json['coverChargeCImage'],
    smokingUDate: json['smokingUDate'],
    smokingUName: json['smokingUName'],
    smokingULocation: json['smokingULocation'],
    smokingUImage: json['smokingUImage'],
    smokingCDate: json['smokingCDate'],
    smokingCName: json['smokingCName'],
    smokingCLocation: json['smokingCLocation'],
    smokingCImage: json['smokingCImage'],
    childUDate: json['childUDate'],
    childUName: json['childUName'],
    childULocation: json['childULocation'],
    childUImage: json['childUImage'],
    childCDate: json['childCDate'],
    childCName: json['childCName'],
    childCLocation: json['childCLocation'],
    childCImage: json['childCImage'],
    happyHourUDate: json['happyHourUDate'],
    happyHourUName: json['happyHourUName'],
    happyHourULocation: json['happyHourULocation'],
    happyHourUImage: json['happyHourUImage'],
    happyHourCDate: json['happyHourCDate'],
    happyHourCName: json['happyHourCName'],
    happyHourCLocation: json['happyHourCLocation'],
    happyHourCImage: json['happyHourCImage'],
    feesUDate: json['feesUDate'],
    feesUName: json['feesUName'],
    feesULocation: json['feesULocation'],
    feesUImage: json['feesUImage'],
    feesCDate: json['feesCDate'],
    feesCName: json['feesCName'],
    feesCLocation: json['feesCLocation'],
    feesCImage: json['feesCImage'],
    priceUDate: json['priceUDate'],
    priceUName: json['priceUName'],
    priceULocation: json['priceULocation'],
    priceUImage: json['priceUImage'],
    priceCDate: json['priceCDate'],
    priceCName: json['priceCName'],
    priceCLocation: json['priceCLocation'],
    priceCImage: json['priceCImage'],
    beerDomUDate: json['beerDomUDate'],
    beerDomUName: json['beerDomUName'],
    beerDomULocation: json['beerDomULocation'],
    beerDomUImage: json['beerDomUImage'],
    beerDomCDate: json['beerDomCDate'],
    beerDomCName: json['beerDomCName'],
    beerDomCLocation: json['beerDomCLocation'],
    beerDomCImage: json['beerDomCImage'],
    beerImpUDate: json['beerImpUDate'],
    beerImpUName: json['beerImpUName'],
    beerImpULocation: json['beerImpULocation'],
    beerImpUImage: json['beerImpUImage'],
    beerImpCDate: json['beerImpCDate'],
    beerImpCName: json['beerImpCName'],
    beerImpCLocation: json['beerImpCLocation'],
    beerImpCImage: json['beerImpCImage'],
    beerDraftUDate: json['beerDraftUDate'],
    beerDraftUName: json['beerDraftUName'],
    beerDraftULocation: json['beerDraftULocation'],
    beerDraftUImage: json['beerDraftUImage'],
    beerDraftCDate: json['beerDraftCDate'],
    beerDraftCName: json['beerDraftCName'],
    beerDraftCLocation: json['beerDraftCLocation'],
    beerDraftCImage: json['beerDraftCImage'],
    wellUDate: json['wellUDate'],
    wellUName: json['wellUName'],
    wellULocation: json['wellULocation'],
    wellUImage: json['wellUImage'],
    wellCDate: json['wellCDate'],
    wellCName: json['wellCName'],
    wellCLocation: json['wellCLocation'],
    wellCImage: json['wellCImage'],
    callUDate: json['callUDate'],
    callUName: json['callUName'],
    callULocation: json['callULocation'],
    callUImage: json['callUImage'],
    callCDate: json['callCDate'],
    callCName: json['callCName'],
    callCLocation: json['callCLocation'],
    callCImage: json['callCImage'],
    cocktailUDate: json['cocktailUDate'],
    cocktailUName: json['cocktailUName'],
    cocktailULocation: json['cocktailULocation'],
    cocktailUImage: json['cocktailUImage'],
    cocktailCDate: json['cocktailCDate'],
    cocktailCName: json['cocktailCName'],
    cocktailCLocation: json['cocktailCLocation'],
    cocktailCImage: json['cocktailCImage'],
    wineUDate: json['wineUDate'],
    wineUName: json['wineUName'],
    wineULocation: json['wineULocation'],
    wineUImage: json['wineUImage'],
    wineCDate: json['wineCDate'],
    wineCName: json['wineCName'],
    wineCLocation: json['wineCLocation'],
    wineCImage: json['wineCImage'],
    bottleUDate: json['bottleUDate'],
    bottleUName: json['bottleUName'],
    bottleULocation: json['bottleULocation'],
    bottleUImage: json['bottleUImage'],
    bottleCDate: json['bottleCDate'],
    bottleCName: json['bottleCName'],
    bottleCLocation: json['bottleCLocation'],
    bottleCImage: json['bottleCImage'],
    breakfastUDate: json['breakfastUDate'],
    breakfastUName: json['breakfastUName'],
    breakfastULocation: json['breakfastULocation'],
    breakfastUImage: json['breakfastUImage'],
    breakfastCDate: json['breakfastCDate'],
    breakfastCName: json['breakfastCName'],
    breakfastCLocation: json['breakfastCLocation'],
    breakfastCImage: json['breakfastCImage'],
    lunchUDate: json['lunchUDate'],
    lunchUName: json['lunchUName'],
    lunchULocation: json['lunchULocation'],
    lunchUImage: json['lunchUImage'],
    lunchCDate: json['lunchCDate'],
    lunchCName: json['lunchCName'],
    lunchCLocation: json['lunchCLocation'],
    lunchCImage: json['lunchCImage'],
    dinnerUDate: json['dinnerUDate'],
    dinnerUName: json['dinnerUName'],
    dinnerULocation: json['dinnerULocation'],
    dinnerUImage: json['dinnerUImage'],
    dinnerCDate: json['dinnerCDate'],
    dinnerCName: json['dinnerCName'],
    dinnerCLocation: json['dinnerCLocation'],
    dinnerCImage: json['dinnerCImage'],
    lateUDate: json['lateUDate'],
    lateUName: json['lateUName'],
    lateULocation: json['lateULocation'],
    lateUImage: json['lateUImage'],
    lateCDate: json['lateCDate'],
    lateCName: json['lateCName'],
    lateCLocation: json['lateCLocation'],
    lateCImage: json['lateCImage'],
  );
}

//Convert a Venue confirmation set into a map of key/value pairs
Map<String, dynamic> _confirmationToJson(Confirmation instance) =>
    <String, dynamic>{
      'descriptionUDate': instance.descriptionUDate,
      'descriptionUName': instance.descriptionUName,
      'descriptionULocation': instance.descriptionULocation,
      'descriptionUImage': instance.descriptionUImage,
      'descriptionCDate': instance.descriptionCDate,
      'descriptionCname': instance.descriptionCName,
      'descriptionCLocation': instance.descriptionCLocation,
      'descriptionCImage': instance.descriptionCImage,
      'locationUDate': instance.locationUDate,
      'locationUName': instance.locationUName,
      'locationULocation': instance.locationULocation,
      'locationUImage': instance.locationUImage,
      'locationCDate': instance.locationCDate,
      'locationCname': instance.locationCName,
      'locationCLocation': instance.locationCLocation,
      'locationCImage': instance.locationCImage,
      'openHoursUDate': instance.openHoursUDate,
      'openHoursUName': instance.openHoursUName,
      'openHoursULocation': instance.openHoursULocation,
      'openHoursUImage': instance.openHoursUImage,
      'openHoursCDate': instance.openHoursCDate,
      'openHoursCname': instance.openHoursCName,
      'openHoursCLocation': instance.openHoursCLocation,
      'openHoursCImage': instance.openHoursCImage,
      'settingUDate': instance.settingUDate,
      'settingUName': instance.settingUName,
      'settingULocation': instance.settingULocation,
      'settingUImage': instance.settingUImage,
      'settingCDate': instance.settingCDate,
      'settingCname': instance.settingCName,
      'settingCLocation': instance.settingCLocation,
      'settingCImage': instance.settingCImage,
      'foodUDate': instance.foodUDate,
      'foodUName': instance.foodUName,
      'foodULocation': instance.foodULocation,
      'foodUImage': instance.foodUImage,
      'foodCDate': instance.foodCDate,
      'foodCname': instance.foodCName,
      'foodCLocation': instance.foodCLocation,
      'foodCImage': instance.foodCImage,
      'wifiUDate': instance.wifiUDate,
      'wifiUName': instance.wifiUName,
      'wifiULocation': instance.wifiULocation,
      'wifiUImage': instance.wifiUImage,
      'wifiCDate': instance.wifiCDate,
      'wifiCname': instance.wifiCName,
      'wifiCLocation': instance.wifiCLocation,
      'wifiCImage': instance.wifiCImage,
      'entertainmentUDate': instance.entertainmentUDate,
      'entertainmentUName': instance.entertainmentUName,
      'entertainmentULocation': instance.entertainmentULocation,
      'entertainmentUImage': instance.entertainmentUImage,
      'entertainmentCDate': instance.entertainmentCDate,
      'entertainmentCname': instance.entertainmentCName,
      'entertainmentCLocation': instance.entertainmentCLocation,
      'entertainmentCImage': instance.entertainmentCImage,
      'gamesUDate': instance.gamesUDate,
      'gamesUName': instance.gamesUName,
      'gamesULocation': instance.gamesULocation,
      'gamesUImage': instance.gamesUImage,
      'gamesCDate': instance.gamesCDate,
      'gamesCname': instance.gamesCName,
      'gamesCLocation': instance.gamesCLocation,
      'gamesCImage': instance.gamesCImage,
      'parkingUDate': instance.parkingUDate,
      'parkingUName': instance.parkingUName,
      'parkingULocation': instance.parkingULocation,
      'parkingUImage': instance.parkingUImage,
      'parkingCDate': instance.parkingCDate,
      'parkingCname': instance.parkingCName,
      'parkingCLocation': instance.parkingCLocation,
      'parkingCImage': instance.parkingCImage,
      'accessUDate': instance.accessUDate,
      'accessUName': instance.accessUName,
      'accessULocation': instance.accessULocation,
      'accessUImage': instance.accessUImage,
      'accessCDate': instance.accessCDate,
      'accessCname': instance.accessCName,
      'accessCLocation': instance.accessCLocation,
      'accessCImage': instance.accessCImage,
      'dressCodeUDate': instance.dressCodeUDate,
      'dressCodeUName': instance.dressCodeUName,
      'dressCodeULocation': instance.dressCodeULocation,
      'dressCodeUImage': instance.dressCodeUImage,
      'dressCodeCDate': instance.dressCodeCDate,
      'dressCodeCname': instance.dressCodeCName,
      'dressCodeCLocation': instance.dressCodeCLocation,
      'dressCodeCImage': instance.dressCodeCImage,
      'coverChargeUDate': instance.coverChargeUDate,
      'coverChargeUName': instance.coverChargeUName,
      'coverChargeULocation': instance.coverChargeULocation,
      'coverChargeUImage': instance.coverChargeUImage,
      'coverChargeCDate': instance.coverChargeCDate,
      'coverChargeCname': instance.coverChargeCName,
      'coverChargeCLocation': instance.coverChargeCLocation,
      'coverChargeCImage': instance.coverChargeCImage,
      'smokingUDate': instance.smokingUDate,
      'smokingUName': instance.smokingUName,
      'smokingULocation': instance.smokingULocation,
      'smokingUImage': instance.smokingUImage,
      'smokingCDate': instance.smokingCDate,
      'smokingCname': instance.smokingCName,
      'smokingCLocation': instance.smokingCLocation,
      'smokingCImage': instance.smokingCImage,
      'childUDate': instance.childUDate,
      'childUName': instance.childUName,
      'childULocation': instance.childULocation,
      'childUImage': instance.childUImage,
      'childCDate': instance.childCDate,
      'childCname': instance.childCName,
      'childCLocation': instance.childCLocation,
      'childCImage': instance.childCImage,
      'happyHourUDate': instance.happyHourUDate,
      'happyHourUName': instance.happyHourUName,
      'happyHourULocation': instance.happyHourULocation,
      'happyHourUImage': instance.happyHourUImage,
      'happyHourCDate': instance.happyHourCDate,
      'happyHourCname': instance.happyHourCName,
      'happyHourCLocation': instance.happyHourCLocation,
      'happyHourCImage': instance.happyHourCImage,
      'feesUDate': instance.feesUDate,
      'feesUName': instance.feesUName,
      'feesULocation': instance.feesULocation,
      'feesUImage': instance.feesUImage,
      'feesCDate': instance.feesCDate,
      'feesCname': instance.feesCName,
      'feesCLocation': instance.feesCLocation,
      'feesCImage': instance.feesCImage,
      'priceUDate': instance.priceUDate,
      'priceUName': instance.priceUName,
      'priceULocation': instance.priceULocation,
      'priceUImage': instance.priceUImage,
      'priceCDate': instance.priceCDate,
      'priceCname': instance.priceCName,
      'priceCLocation': instance.priceCLocation,
      'priceCImage': instance.priceCImage,
      'beerDomUDate': instance.beerDomUDate,
      'beerDomUName': instance.beerDomUName,
      'beerDomULocation': instance.beerDomULocation,
      'beerDomUImage': instance.beerDomUImage,
      'beerDomCDate': instance.beerDomCDate,
      'beerDomCname': instance.beerDomCName,
      'beerDomCLocation': instance.beerDomCLocation,
      'beerDomCImage': instance.beerDomCImage,
      'beerImpUDate': instance.beerImpUDate,
      'beerImpUName': instance.beerImpUName,
      'beerImpULocation': instance.beerImpULocation,
      'beerImpUImage': instance.beerImpUImage,
      'beerImpCDate': instance.beerImpCDate,
      'beerImpCname': instance.beerImpCName,
      'beerImpCLocation': instance.beerImpCLocation,
      'beerImpCImage': instance.beerImpCImage,
      'beerDraftUDate': instance.beerDraftUDate,
      'beerDraftUName': instance.beerDraftUName,
      'beerDraftULocation': instance.beerDraftULocation,
      'beerDraftUImage': instance.beerDraftUImage,
      'beerDraftCDate': instance.beerDraftCDate,
      'beerDraftCname': instance.beerDraftCName,
      'beerDraftCLocation': instance.beerDraftCLocation,
      'beerDraftCImage': instance.beerDraftCImage,
      'wellUDate': instance.wellUDate,
      'wellUName': instance.wellUName,
      'wellULocation': instance.wellULocation,
      'wellUImage': instance.wellUImage,
      'wellCDate': instance.wellCDate,
      'wellCname': instance.wellCName,
      'wellCLocation': instance.wellCLocation,
      'wellCImage': instance.wellCImage,
      'callUDate': instance.callUDate,
      'callUName': instance.callUName,
      'callULocation': instance.callULocation,
      'callUImage': instance.callUImage,
      'callCDate': instance.callCDate,
      'callCname': instance.callCName,
      'callCLocation': instance.callCLocation,
      'callCImage': instance.callCImage,
      'cocktailUDate': instance.cocktailUDate,
      'cocktailUName': instance.cocktailUName,
      'cocktailULocation': instance.cocktailULocation,
      'cocktailUImage': instance.cocktailUImage,
      'cocktailCDate': instance.cocktailCDate,
      'cocktailCname': instance.cocktailCName,
      'cocktailCLocation': instance.cocktailCLocation,
      'cocktailCImage': instance.cocktailCImage,
      'wineUDate': instance.wineUDate,
      'wineUName': instance.wineUName,
      'wineULocation': instance.wineULocation,
      'wineUImage': instance.wineUImage,
      'wineCDate': instance.wineCDate,
      'wineCname': instance.wineCName,
      'wineCLocation': instance.wineCLocation,
      'wineCImage': instance.wineCImage,
      'bottleUDate': instance.bottleUDate,
      'bottleUName': instance.bottleUName,
      'bottleULocation': instance.bottleULocation,
      'bottleUImage': instance.bottleUImage,
      'bottleCDate': instance.bottleCDate,
      'bottleCname': instance.bottleCName,
      'bottleCLocation': instance.bottleCLocation,
      'bottleCImage': instance.bottleCImage,
      'breakfastUDate': instance.breakfastUDate,
      'breakfastUName': instance.breakfastUName,
      'breakfastULocation': instance.breakfastULocation,
      'breakfastUImage': instance.breakfastUImage,
      'breakfastCDate': instance.breakfastCDate,
      'breakfastCname': instance.breakfastCName,
      'breakfastCLocation': instance.breakfastCLocation,
      'breakfastCImage': instance.breakfastCImage,
      'lunchUDate': instance.lunchUDate,
      'lunchUName': instance.lunchUName,
      'lunchULocation': instance.lunchULocation,
      'lunchUImage': instance.lunchUImage,
      'lunchCDate': instance.lunchCDate,
      'lunchCname': instance.lunchCName,
      'lunchCLocation': instance.lunchCLocation,
      'lunchCImage': instance.lunchCImage,
      'dinnerUDate': instance.dinnerUDate,
      'dinnerUName': instance.dinnerUName,
      'dinnerULocation': instance.dinnerULocation,
      'dinnerUImage': instance.dinnerUImage,
      'dinnerCDate': instance.dinnerCDate,
      'dinnerCname': instance.dinnerCName,
      'dinnerCLocation': instance.dinnerCLocation,
      'dinnerCImage': instance.dinnerCImage,
      'lateUDate': instance.lateUDate,
      'lateUName': instance.lateUName,
      'lateULocation': instance.lateULocation,
      'lateUImage': instance.lateUImage,
      'lateCDate': instance.lateCDate,
      'lateCname': instance.lateCName,
      'lateCLocation': instance.lateCLocation,
      'lateCImage': instance.lateCImage,
    };
