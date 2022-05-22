import 'package:bzoozle/Models/happy_hour_session.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Services/firestore_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VenueProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  String _venueName = "";
  String? _venueType;
  String? _venueTheme;
  String? _venueDescription;
  String? _venueDoorNumber;
  String? _venueStreet;
  String? _venueHostBuilding;
  String? _venueArea;
  String? _venueCity;
  String? _venuePostcode;
  String? _venueDirections;
  //Opening Hours Attributes
  bool _chBoxMonday = false;
  bool _chBoxTuesday = false;
  bool _chBoxWednesday = false;
  bool _chBoxThursday = false;
  bool _chBoxFriday = false;
  bool _chBoxSaturday = false;
  bool _chBoxSunday = false;
  bool _chBox24Open = false;
  bool _chBox24Closed = false;
  bool _chBoxNoOpen = false;
  bool _chBoxNoClose = false;
  String _timeSetMessage = "Set the opening and closing times for ";
  int _countOpenTimeSetTrue = 0;
  int _messageCount = 0;
  String _originalOpenTime = "?";
  String _originalCloseTime = "?";
  String _selectedOpenTime = "00:00";
  String _selectedCloseTime = "00:00";
  String? _openTime0 = "?";
  String? _closeTime0 = "?";
  String? _openTime1 = "?";
  String? _closeTime1 = "?";
  String? _openTime2 = "?";
  String? _closeTime2 = "?";
  String? _openTime3 = "?";
  String? _closeTime3 = "?";
  String? _openTime4 = "?";
  String? _closeTime4 = "?";
  String? _openTime5 = "?";
  String? _closeTime5 = "?";
  String? _openTime6 = "?";
  String? _closeTime6 = "?";
//Facilities attributes
  String _indoor = "No";
  String _outdoor = "No";
  String _rooftop = "No";
  String _settingCom = "";
  String _breakfast = "No";
  String _lunch = "No";
  String _dinner = "No";
  String _late = "No";
  String _foodCom = "";
  String _wifi = "None";
  String _password = "";
  String _wifiCom = "";
  String _live = "No";
  String _dj = "No";
  String _recorded = "No";
  String _karaoke = "No";
  String _entertainmentCom = "";
  String _gambling = "No";
  String _board = "No";
  String _video = "No";
  String _pub = "No";
  String _gamesCom = "";
  String _parking = "No";
  String _parkingCom = "";
  String _access = "No";
  String _accessCom = "";
//Policy attributes
  String _dressCode = "Strict";
  String _dressCodeCom = "";
  String _coverCharge = "Never";
  String _coverChargeCom = "";
  String _smoking = "Permitted";
  String _smokingCom = "";
  String _child = "No";
  String _childCom = "";
//Pricing attributes
  String _fees = "No";
  String _feesCom = "";
  int _priceGuide = 3;
  String _priceCom = "";
  String _beerDom = "00.00";
  String _beerImp = "00.00";
  String _beerDraft = "00.00";
  String _well = "00.00";
  String _call = "00.00";
  String _cocktail = "00.00";
  String _wine = "00.00";
  String _bottle = "00.00";
  String _bEntree = "00.00";
  String _lEntree = "00.00";
  String _dEntree = "00.00";
  String _lateEntree = "00.00";
  String _beerDomCom = "";
  String _beerImpCom = "";
  String _beerDraftCom = "";
  String _wellCom = "";
  String _callCom = "";
  String _cocktailCom = "";
  String _wineCom = "";
  String _bottleCom = "";
  String _bEntreeCom = "";
  String _lEntreeCom = "";
  String _dEntreeCom = "";
  String _lateEntreeCom = "";
  //Happy hour attributes
  List<HappyHourSession> _happyHours = [];
  bool _chBoxHHMonday = false;
  bool _chBoxHHTuesday = false;
  bool _chBoxHHWednesday = false;
  bool _chBoxHHThursday = false;
  bool _chBoxHHFriday = false;
  bool _chBoxHHSaturday = false;
  bool _chBoxHHSunday = false;

  //Getters
  String get venueName => _venueName;
  String? get venueType => _venueType;
  String? get venueTheme => _venueTheme;
  String? get venueDescription => _venueDescription;
  String? get venueDoorNumber => _venueDoorNumber;
  String? get venueStreet => _venueStreet;
  String? get venueHostBuilding => _venueHostBuilding;
  String? get venueArea => _venueArea;
  String? get venueCity => _venueCity;
  String? get venuePostcode => _venuePostcode;
  String? get venueDirections => _venueDirections;
  //Opening TImes Getters
  bool get chBoxMonday => _chBoxMonday;
  bool get chBoxTuesday => _chBoxTuesday;
  bool get chBoxWednesday => _chBoxWednesday;
  bool get chBoxThursday => _chBoxThursday;
  bool get chBoxFriday => _chBoxFriday;
  bool get chBoxSaturday => _chBoxSaturday;
  bool get chBoxSunday => _chBoxSunday;
  bool get chBox24Open => _chBox24Open;
  bool get chBox24Closed => _chBox24Closed;
  bool get chBoxNoOpen => _chBoxNoOpen;
  bool get chBoxNoClose => _chBoxNoClose;
  String get timeSetMessage => _timeSetMessage;
  int get countOpenTimeSetTrue => _countOpenTimeSetTrue;
  int get messageCount => _messageCount;
  String get originalOpenTime => _originalOpenTime;
  String get originalCloseTime => _originalCloseTime;
  String get selectedOpenTime => _selectedOpenTime;
  String get selectedCloseTime => _selectedCloseTime;
  String? get openTime0 => _openTime0;
  String? get closeTime0 => _closeTime0;
  String? get openTime1 => _openTime1;
  String? get closeTime1 => _closeTime1;
  String? get openTime2 => _openTime2;
  String? get closeTime2 => _closeTime2;
  String? get openTime3 => _openTime3;
  String? get closeTime3 => _closeTime3;
  String? get openTime4 => _openTime4;
  String? get closeTime4 => _closeTime4;
  String? get openTime5 => _openTime5;
  String? get closeTime5 => _closeTime5;
  String? get openTime6 => _openTime6;
  String? get closeTime6 => _closeTime6;
//Facilities Getters
  String get indoor => _indoor;
  String get outdoor => _outdoor;
  String get rooftop => _rooftop;
  String get settingCom => _settingCom;
  String get breakfast => _breakfast;
  String get lunch => _lunch;
  String get dinner => _dinner;
  String get late => _late;
  String get foodCom => _foodCom;
  String get wifi => _wifi;
  String get password => _password;
  String get wifiCom => _wifiCom;
  String get live => _live;
  String get dj => _dj;
  String get recorded => _recorded;
  String get karaoke => _karaoke;
  String get entertainmentCom => _entertainmentCom;
  String get gambling => _gambling;
  String get board => _board;
  String get video => _video;
  String get pub => _pub;
  String get gamesCom => _gamesCom;
  String get parking => _parking;
  String get parkingCom => _parkingCom;
  String get access => _access;
  String get accessCom => _accessCom;
//Policy att =>ibutes
  String get dressCode => _dressCode;
  String get dressCodeCom => _dressCodeCom;
  String get coverCharge => _coverCharge;
  String get coverChargeCom => _coverChargeCom;
  String get smoking => _smoking;
  String get smokingCom => _smokingCom;
  String get child => _child;
  String get childCom => _childCom;
//Pricing at =>ributes
  String get fees => _fees;
  String get feesCom => _feesCom;
  int get priceGuide => _priceGuide;
  String get priceCom => _priceCom;
  String get beerDom => _beerDom;
  String get beerImp => _beerImp;
  String get beerDraft => _beerDraft;
  String get well => _well;
  String get call => _call;
  String get cocktail => _cocktail;
  String get wine => _wine;
  String get bottle => _bottle;
  String get bEntree => _bEntree;
  String get lEntree => _lEntree;
  String get dEntree => _dEntree;
  String get lateEntree => _lateEntree;
  String get beerDomCom => _beerDomCom;
  String get beerImpCom => _beerImpCom;
  String get beerDraftCom => _beerDraftCom;
  String get wellCom => _wellCom;
  String get callCom => _callCom;
  String get cocktailCom => _cocktailCom;
  String get wineCom => _wineCom;
  String get bottleCom => _bottleCom;
  String get bEntreeCom => _bEntreeCom;
  String get lEntreeCom => _lEntreeCom;
  String get dEntreeCom => _dEntreeCom;
  String get lateEntreeCom => _lateEntreeCom;
  //Happy Hours Getters
  List<HappyHourSession> get happyHours => _happyHours;
  bool get chBoxHHMonday => _chBoxHHMonday;
  bool get chBoxHHTuesday => _chBoxHHTuesday;
  bool get chBoxHHWednesday => _chBoxHHWednesday;
  bool get chBoxHHThursday => _chBoxHHThursday;
  bool get chBoxHHFriday => _chBoxHHFriday;
  bool get chBoxHHSaturday => _chBoxHHSaturday;
  bool get chBoxHHSunday => _chBoxHHSunday;
  Stream<QuerySnapshot<Object?>> get streamVenuesList =>
      firestoreService.getVenues();

  //Setters
  set changeName(String value) {
    _venueName = value;
    notifyListeners();
  }

  set changeType(String value) {
    _venueType = value;
    notifyListeners();
  }

  set changeTheme(String value) {
    _venueTheme = value;
    notifyListeners();
  }

  set changeDescription(String value) {
    _venueDescription = value;
    notifyListeners();
  }

  set changeDoorNumber(String value) {
    _venueDoorNumber = value;
    notifyListeners();
  }

  set changeStreet(String value) {
    _venueStreet = value;
    notifyListeners();
  }

  set changeHostBuilding(String value) {
    if (value == "N/A") {
      _venueHostBuilding;
    } else {
      _venueHostBuilding = value;
    }
    notifyListeners();
  }

  set changeArea(String value) {
    _venueArea = value;
    notifyListeners();
  }

  set changeCity(String value) {
    _venueCity = value;
    notifyListeners();
  }

  set changePostcode(String value) {
    _venuePostcode = value;
    notifyListeners();
  }

  set changeDirections(String value) {
    _venueDirections = value;
    notifyListeners();
  }

//Opening Times Setters
  set openTime0(String? value) {
    _openTime0 = value;
    notifyListeners();
  }

  set closeTime0(String? value) {
    _closeTime0 = value;
    notifyListeners();
  }

  set openTime1(String? value) {
    _openTime1 = value;
    notifyListeners();
  }

  set closeTime1(String? value) {
    _closeTime1 = value;
    notifyListeners();
  }

  set openTime2(String? value) {
    _openTime2 = value;
    notifyListeners();
  }

  set closeTime2(String? value) {
    _closeTime2 = value;
    notifyListeners();
  }

  set openTime3(String? value) {
    _openTime3 = value;
    notifyListeners();
  }

  set closeTime3(String? value) {
    _closeTime3 = value;
    notifyListeners();
  }

  set openTime4(String? value) {
    _openTime4 = value;
    notifyListeners();
  }

  set closeTime4(String? value) {
    _closeTime4 = value;
    notifyListeners();
  }

  set openTime5(String? value) {
    _openTime5 = value;
    notifyListeners();
  }

  set closeTime5(String? value) {
    _closeTime5 = value;
    notifyListeners();
  }

  set openTime6(String? value) {
    _openTime6 = value;
    notifyListeners();
  }

  set closeTime6(String? value) {
    _closeTime6 = value;
    notifyListeners();
  }

  set chBox24Open(bool value) {
    _chBox24Open = value;
    notifyListeners();
  }

  set chBoxMonday(bool value) {
    _chBoxMonday = value;
    notifyListeners();
  }

  set chBoxTuesday(bool value) {
    _chBoxTuesday = value;
    notifyListeners();
  }

  set chBoxWednesday(bool value) {
    _chBoxWednesday = value;
    notifyListeners();
  }

  set chBoxThursday(bool value) {
    _chBoxThursday = value;
    notifyListeners();
  }

  set chBoxFriday(bool value) {
    _chBoxFriday = value;
    notifyListeners();
  }

  set chBoxSaturday(bool value) {
    _chBoxSaturday = value;
    notifyListeners();
  }

  set chBoxSunday(bool value) {
    _chBoxSunday = value;
    notifyListeners();
  }

  set timeSetMessage(String value) {
    _timeSetMessage = value;
    notifyListeners();
  }

  set countOpenTimeSetTrue(int value) {
    _countOpenTimeSetTrue = value;
    notifyListeners();
  }

  set messageCount(int value) {
    _messageCount = value;
    notifyListeners();
  }

  set chBox24Closed(bool value) {
    _chBox24Closed = value;
    notifyListeners();
  }

  set chBoxNoOpen(bool value) {
    _chBoxNoOpen = value;
    notifyListeners();
  }

  set chBoxNoClose(bool value) {
    _chBoxNoClose = value;
    notifyListeners();
  }

  set originalOpenTime(String value) {
    _originalOpenTime = value;
    notifyListeners();
  }

  set originalCloseTime(String value) {
    _originalCloseTime = value;
    notifyListeners();
  }

  set selectedOpenTime(String value) {
    _selectedOpenTime = value;
    notifyListeners();
  }

  set selectedCloseTime(String value) {
    _selectedCloseTime = value;
    notifyListeners();
  }

//Facilities Setters
  set changeSettingCom(String value) {
    _settingCom = value;
    notifyListeners();
  }

  set selectedIndoor(String value) {
    _indoor = value;
    notifyListeners();
  }

  set selectedOutoor(String value) {
    _outdoor = value;
    notifyListeners();
  }

  set selectedRooftop(String value) {
    _rooftop = value;
    notifyListeners();
  }

  set selectedBreakfast(String value) {
    _breakfast = value;
    notifyListeners();
  }

  set selectedLunch(String value) {
    _lunch = value;
    notifyListeners();
  }

  set selectedDinner(String value) {
    _dinner = value;
    notifyListeners();
  }

  set selectedLate(String value) {
    _late = value;
    notifyListeners();
  }

  set changeFoodCom(String value) {
    _foodCom = value;
    notifyListeners();
  }

  set selectedWifi(String value) {
    _wifi = value;
    notifyListeners();
  }

  set changePassword(String value) {
    _password = value;
    notifyListeners();
  }

  set changeWifiCom(String value) {
    _wifiCom = value;
    notifyListeners();
  }

  set selectedLive(String value) {
    _live = value;
    notifyListeners();
  }

  set selectedDj(String value) {
    _dj = value;
    notifyListeners();
  }

  set selectedRecorded(String value) {
    _recorded = value;
    notifyListeners();
  }

  set selectedKaraoke(String value) {
    _karaoke = value;
    notifyListeners();
  }

  set changeEntertainmentCom(String value) {
    _entertainmentCom = value;
    notifyListeners();
  }

  set selectedGambling(String value) {
    _gambling = value;
    notifyListeners();
  }

  set selectedBoard(String value) {
    _board = value;
    notifyListeners();
  }

  set selectedVideo(String value) {
    _video = value;
    notifyListeners();
  }

  set selectedPub(String value) {
    _pub = value;
    notifyListeners();
  }

  set changeGamesCom(String value) {
    _gamesCom = value;
    notifyListeners();
  }

  set selectedParking(String value) {
    _parking = value;
    notifyListeners();
  }

  set changeParkingCom(String value) {
    _parkingCom = value;
    notifyListeners();
  }

  set selectedAccess(String value) {
    _access = value;
    notifyListeners();
  }

  set changeAccessCom(String value) {
    _accessCom = value;
    notifyListeners();
  }

//Policy attributes
  set selectedDressCode(String value) {
    _dressCode = value;
    notifyListeners();
  }

  set changeDressCodeCom(String value) {
    _dressCodeCom = value;
    notifyListeners();
  }

  set selectedCoverCharge(String value) {
    _coverCharge = value;
    notifyListeners();
  }

  set changeCoverChargeCom(String value) {
    _coverChargeCom = value;
    notifyListeners();
  }

  set selectedSmoking(String value) {
    _smoking = value;
    notifyListeners();
  }

  set changeSmokingCom(String value) {
    _smokingCom = value;
    notifyListeners();
  }

  set selectedChild(String value) {
    _child = value;
    notifyListeners();
  }

  set changeChildCom(String value) {
    _childCom = value;
    notifyListeners();
  }

//Pricing attributes
  set selectedFees(String value) {
    _fees = value;
    notifyListeners();
  }

  set changeFeesCom(String value) {
    _feesCom = value;
    notifyListeners();
  }

  set selectedPrice(int value) {
    _priceGuide = value;
    notifyListeners();
  }

  set changePriceCom(String value) {
    _priceCom = value;
    notifyListeners();
  }

  set changeBeerDom(String value) {
    _beerDom = value;
    notifyListeners();
  }

  set changeBeerImp(String value) {
    _beerImp = value;
    notifyListeners();
  }

  set changeBeerDraft(String value) {
    _beerDraft = value;
    notifyListeners();
  }

  set changeWell(String value) {
    _well = value;
    notifyListeners();
  }

  set changeCall(String value) {
    _call = value;
    notifyListeners();
  }

  set changeCocktail(String value) {
    _cocktail = value;
    notifyListeners();
  }

  set changeWine(String value) {
    _wine = value;
    notifyListeners();
  }

  set changeBottle(String value) {
    _bottle = value;
    notifyListeners();
  }

  set changeBEntree(String value) {
    _bEntree = value;
    notifyListeners();
  }

  set changeLEntree(String value) {
    _lEntree = value;
    notifyListeners();
  }

  set changeDEntree(String value) {
    _dEntree = value;
    notifyListeners();
  }

  set changeLateEntree(String value) {
    _lateEntree = value;
    notifyListeners();
  }

  set changeBeerDomCom(String value) {
    _beerDomCom = value;
    notifyListeners();
  }

  set changeBeerImpCom(String value) {
    _beerImpCom = value;
    notifyListeners();
  }

  set changeBeerDraftCom(String value) {
    _beerDraftCom = value;
    notifyListeners();
  }

  set changeWellCom(String value) {
    _wellCom = value;
    notifyListeners();
  }

  set changeCallCom(String value) {
    _callCom = value;
    notifyListeners();
  }

  set changeCocktailCom(String value) {
    _cocktailCom = value;
    notifyListeners();
  }

  set changeWineCom(String value) {
    _wineCom = value;
    notifyListeners();
  }

  set changeBottleCom(String value) {
    _bottleCom = value;
    notifyListeners();
  }

  set changeBEntreeCom(String value) {
    _bEntreeCom = value;
    notifyListeners();
  }

  set changeLEntreeCom(String value) {
    _lEntreeCom = value;
    notifyListeners();
  }

  set changeDEntreeCom(String value) {
    _dEntreeCom = value;
    notifyListeners();
  }

  set changeLateEntreeCom(String value) {
    _lateEntreeCom = value;
    notifyListeners();
  }

//Happy Hours Setters
  set happyHours(List<HappyHourSession> value) {
    _happyHours = value;
  }

  set chBoxHHMonday(bool value) {
    _chBoxHHMonday = value;
    notifyListeners();
  }

  set chBoxHHTuesday(bool value) {
    _chBoxHHTuesday = value;
    notifyListeners();
  }

  set chBoxHHWednesday(bool value) {
    _chBoxHHWednesday = value;
    notifyListeners();
  }

  set chBoxHHThursday(bool value) {
    _chBoxHHThursday = value;
    notifyListeners();
  }

  set chBoxHHFriday(bool value) {
    _chBoxHHFriday = value;
    notifyListeners();
  }

  set chBoxHHSaturday(bool value) {
    _chBoxHHSaturday = value;
    notifyListeners();
  }

  set chBoxHHSunday(bool value) {
    _chBoxHHSunday = value;
    notifyListeners();
  }

  //Methods

  loadVenue(Venue? venue) {
    if (venue != null) {
      _venueName = venue.venueName;
      _venueType = venue.venueType;
      _venueTheme = venue.venueTheme;
      _venueDescription = venue.venueDescription;
      _venueDoorNumber = venue.venueDoorNumber;
      _venueStreet = venue.venueStreet;
      _venueHostBuilding = venue.venueHostBuilding;
      _venueArea = venue.venueArea;
      _venueCity = venue.venueCity;
      _venuePostcode = venue.venuePostcode;
      _venueDirections = venue.venueDirections;
      _openTime0 = venue.openTime0;
      _closeTime0 = venue.closeTime0;
      _openTime1 = venue.openTime1;
      _closeTime1 = venue.closeTime1;
      _openTime2 = venue.openTime2;
      _closeTime2 = venue.closeTime2;
      _openTime3 = venue.openTime3;
      _closeTime3 = venue.closeTime3;
      _openTime4 = venue.openTime4;
      _closeTime4 = venue.closeTime4;
      _openTime5 = venue.openTime5;
      _closeTime5 = venue.closeTime5;
      _openTime6 = venue.openTime6;
      _closeTime6 = venue.closeTime6;
      _happyHours = venue.happyHours!;
    } else {
      _venueName;
      _venueType = null;
      _venueTheme = null;
      _venueDescription = null;
      _venueDoorNumber = null;
      _venueStreet = null;
      _venueHostBuilding = null;
      _venueArea = null;
      _venueCity = null;
      _venuePostcode = null;
      _venueDirections = null;
      _openTime0 = "?";
      _closeTime0 = "?";
      _openTime1 = "?";
      _closeTime1 = "?";
      _openTime2 = "?";
      _closeTime2 = "?";
      _openTime3 = "?";
      _closeTime3 = "?";
      _openTime4 = "?";
      _closeTime4 = "?";
      _openTime5 = "?";
      _closeTime5 = "?";
      _openTime6 = "?";
      _closeTime6 = "?";
      _happyHours = [];
    }
    notifyListeners();
  }

  unloadVenue() {
    _venueName;
    _venueType = null;
    _venueTheme = null;
    _venueDescription = null;
    _venueDoorNumber = null;
    _venueStreet = null;
    _venueHostBuilding = null;
    _venueArea = null;
    _venueCity = null;
    _venuePostcode = null;
    _venueDirections = null;
    _openTime0 = "?";
    _closeTime0 = "?";
    _openTime1 = "?";
    _closeTime1 = "?";
    _openTime2 = "?";
    _closeTime2 = "?";
    _openTime3 = "?";
    _closeTime3 = "?";
    _openTime4 = "?";
    _closeTime4 = "?";
    _openTime5 = "?";
    _closeTime5 = "?";
    _openTime6 = "?";
    _closeTime6 = "?";
    _happyHours = [];
  }

  addVenue() {
    var newVenue = Venue(
      venueName: venueName,
      venueDescription: venueDescription,
      venueType: venueType,
      venueTheme: venueTheme,
      venueDoorNumber: venueDoorNumber,
      venueStreet: venueStreet,
      venueHostBuilding: venueHostBuilding != "N/A" ? venueHostBuilding : null,
      venueArea: venueArea,
      venueCity: venueCity,
      venuePostcode: venuePostcode,
      venueDirections: venueDirections,
      openTime0: openTime0,
      closeTime0: closeTime0,
      openTime1: openTime1,
      closeTime1: closeTime1,
      openTime2: openTime1,
      closeTime2: closeTime2,
      openTime3: openTime3,
      closeTime3: closeTime3,
      openTime4: openTime4,
      closeTime4: closeTime4,
      openTime5: openTime5,
      closeTime5: closeTime5,
      openTime6: openTime6,
      closeTime6: closeTime6,
      happyHours: happyHours,
    );
    firestoreService.addVenue(newVenue);
  }

  updateVenue(String venueId) {
    var currentVenue = Venue(
      venueName: venueName,
      venueDescription: venueDescription,
      venueType: venueType,
      venueTheme: venueTheme,
      venueDoorNumber: venueDoorNumber,
      venueStreet: venueStreet,
      venueHostBuilding: venueHostBuilding != "N/A" ? venueHostBuilding : null,
      venueArea: venueArea,
      venueCity: venueCity,
      venuePostcode: venuePostcode,
      venueDirections: venueDirections,
      openTime0: openTime0,
      closeTime0: closeTime0,
      openTime1: openTime1,
      closeTime1: closeTime1,
      openTime2: openTime1,
      closeTime2: closeTime2,
      openTime3: openTime3,
      closeTime3: closeTime3,
      openTime4: openTime4,
      closeTime4: closeTime4,
      openTime5: openTime5,
      closeTime5: closeTime5,
      openTime6: openTime6,
      closeTime6: closeTime6,
      happyHours: happyHours,
    );
    firestoreService.updateVenue(currentVenue);
  }

//Opening Times Methods
  // removeVenue(String venueId) {
  //   firestoreService.removeVenue(venueId);
  // }

  changeMonday(bool value) {
    chBoxMonday = value;
    notifyListeners();
  }

  changeTuesday(bool value) {
    chBoxTuesday = value;
    notifyListeners();
  }

  changeWednesday(bool value) {
    chBoxWednesday = value;
    notifyListeners();
  }

  changeThursday(bool value) {
    chBoxThursday = value;
    notifyListeners();
  }

  changeFriday(bool value) {
    chBoxFriday = value;
    notifyListeners();
  }

  changeSaturday(bool value) {
    chBoxSaturday = value;
    notifyListeners();
  }

  changeSunday(bool value) {
    chBoxSunday = value;
    notifyListeners();
  }

  change24Open(bool value) {
    chBox24Open = value;
    if (value) {
      chBox24Closed = false;
      selectedOpenTime = "OPEN";
      selectedCloseTime = "OPEN";
    } else {
      selectedOpenTime = originalOpenTime;
      selectedCloseTime = originalCloseTime;
    }
    notifyListeners();
  }

  change24Closed(bool value) {
    chBox24Closed = value;
    if (value) {
      chBox24Open = false;
      selectedOpenTime = "CLOSED";
      selectedCloseTime = "CLOSED";
    } else {
      selectedOpenTime = originalOpenTime;
      selectedCloseTime = originalCloseTime;
    }
    notifyListeners();
  }

  changeNoOpen(bool value) {
    chBoxNoOpen = value;
    if (value) {
      selectedOpenTime = "OPEN";
    } else {
      selectedOpenTime = originalOpenTime;
    }
    notifyListeners();
  }

  changeNoClose(bool value) {
    chBoxNoClose = value;
    if (value) {
      selectedCloseTime = "OPEN";
    } else {
      selectedCloseTime = originalCloseTime;
    }
    notifyListeners();
  }

  changeSelectedOpenTime(String value) {
    selectedOpenTime = value;
    notifyListeners();
  }

  changeSelectedCloseTime(String value) {
    selectedCloseTime = value;
    notifyListeners();
  }

  void finishTimeSetting() {
    if (chBoxMonday == true) {
      openTime0 = selectedOpenTime;
      closeTime0 = selectedCloseTime;
      chBoxMonday = false;
    }
    if (chBoxTuesday == true) {
      openTime1 = selectedOpenTime;
      closeTime1 = selectedCloseTime;
      chBoxTuesday = false;
    }
    if (chBoxWednesday == true) {
      openTime2 = selectedOpenTime;
      closeTime2 = selectedCloseTime;
      chBoxWednesday = false;
    }
    if (chBoxThursday == true) {
      openTime3 = selectedOpenTime;
      closeTime3 = selectedCloseTime;
      chBoxThursday = false;
    }
    if (chBoxFriday == true) {
      openTime4 = selectedOpenTime;
      closeTime4 = selectedCloseTime;
      chBoxFriday = false;
    }
    if (chBoxSaturday == true) {
      openTime5 = selectedOpenTime;
      closeTime5 = selectedCloseTime;
      chBoxSaturday = false;
    }
    if (chBoxSunday == true) {
      openTime6 = selectedOpenTime;
      closeTime6 = selectedCloseTime;
      chBoxSunday = false;
    }
    notifyListeners();
  }

  countOpenTimesTrue() {
    countOpenTimeSetTrue = 0;
    if (chBoxMonday) countOpenTimeSetTrue++;
    if (chBoxTuesday) countOpenTimeSetTrue++;
    if (chBoxWednesday) countOpenTimeSetTrue++;
    if (chBoxThursday) countOpenTimeSetTrue++;
    if (chBoxFriday) countOpenTimeSetTrue++;
    if (chBoxSaturday) countOpenTimeSetTrue++;
    if (chBoxSunday) countOpenTimeSetTrue++;
    notifyListeners();
  }

  generateTimeSetText() {
    timeSetMessage = "Set the opening and closing times for ";
    countOpenTimesTrue();
    if (countOpenTimeSetTrue != 0) {
      messageCount = 0;
      if (chBoxMonday) {
        alterMessage("Monday");
      }
      if (chBoxTuesday) {
        alterMessage("Tuesday");
      }
      if (chBoxWednesday) {
        alterMessage("Wednesday");
      }
      if (chBoxThursday) {
        alterMessage("Thursday");
      }
      if (chBoxFriday) {
        alterMessage("Friday");
      }
      if (chBoxSaturday) {
        alterMessage("Saturday");
      }
      if (chBoxSunday) {
        alterMessage("Sunday");
      }
    }
    notifyListeners();
  }

  alterMessage(String dayToAdd) {
    messageCount++;
    if (messageCount == 1) {
      timeSetMessage = "$timeSetMessage $dayToAdd";
    } else {
      if (messageCount == countOpenTimeSetTrue) {
        timeSetMessage = "$timeSetMessage & $dayToAdd";
      } else {
        timeSetMessage = "$timeSetMessage, $dayToAdd";
      }
    }
  }

  //Happy Hour Sessions Methods
  changeHHMonday(bool value) {
    chBoxHHMonday = value;
    notifyListeners();
  }

  changeHHTuesday(bool value) {
    chBoxHHTuesday = value;
    notifyListeners();
  }

  changeHHWednesday(bool value) {
    chBoxHHWednesday = value;
    notifyListeners();
  }

  changeHHThursday(bool value) {
    chBoxHHThursday = value;
    notifyListeners();
  }

  changeHHFriday(bool value) {
    chBoxHHFriday = value;
    notifyListeners();
  }

  changeHHSaturday(bool value) {
    chBoxHHSaturday = value;
    notifyListeners();
  }

  changeHHSunday(bool value) {
    chBoxHHSunday = value;
    notifyListeners();
  }

  saveHHSession() {
    DateTime now = DateTime.now();
    int _dayAdjust = (int.parse(selectedOpenTime.split(":")[0]) <
            int.parse(selectedCloseTime.split(":")[0]))
        ? 0
        : 1;
    DateTime _calculatedStartTime = DateTime(
        now.year,
        now.month,
        now.day,
        int.parse(selectedOpenTime.split(":")[0]),
        int.parse(selectedOpenTime.split(":")[1]));
    DateTime _calculatedEndTime = DateTime(
        now.year,
        now.month,
        now.day + _dayAdjust,
        int.parse(selectedCloseTime.split(":")[0]),
        int.parse(selectedCloseTime.split(":")[1]));
    if (chBoxHHMonday) {
      addHHSession(HappyHourSession(
          day: "0",
          startTime: selectedOpenTime,
          duration:
              (_calculatedEndTime.difference(_calculatedStartTime).inMinutes)));
      changeHHMonday(false);
    }
    if (chBoxHHTuesday) {
      addHHSession(HappyHourSession(
          day: "1",
          startTime: selectedOpenTime,
          duration:
              (_calculatedEndTime.difference(_calculatedStartTime).inMinutes)));
      changeHHTuesday(false);
    }
    if (chBoxHHWednesday) {
      addHHSession(HappyHourSession(
          day: "2",
          startTime: selectedOpenTime,
          duration:
              (_calculatedEndTime.difference(_calculatedStartTime).inMinutes)));
      changeHHWednesday(false);
    }
    if (chBoxHHThursday) {
      addHHSession(HappyHourSession(
          day: "3",
          startTime: selectedOpenTime,
          duration:
              (_calculatedEndTime.difference(_calculatedStartTime).inMinutes)));
      changeHHThursday(false);
    }
    if (chBoxHHFriday) {
      addHHSession(HappyHourSession(
          day: "4",
          startTime: selectedOpenTime,
          duration:
              (_calculatedEndTime.difference(_calculatedStartTime).inMinutes)));
      changeHHFriday(false);
    }
    if (chBoxHHSaturday) {
      addHHSession(HappyHourSession(
          day: "5",
          startTime: selectedOpenTime,
          duration:
              (_calculatedEndTime.difference(_calculatedStartTime).inMinutes)));
      changeHHSaturday(false);
    }
    if (chBoxHHSunday) {
      addHHSession(HappyHourSession(
          day: "6",
          startTime: selectedOpenTime,
          duration:
              (_calculatedEndTime.difference(_calculatedStartTime).inMinutes)));
      changeHHSunday(false);
    }
    selectedOpenTime = "00:00";
    selectedCloseTime = "00:00";
    happyHours.sort((a, b) => ("${a.day}${a.startTime}")
        .toString()
        .compareTo(("${b.day}${b.startTime}").toString()));
    notifyListeners();
  }

  addHHSession(HappyHourSession session) {
    happyHours.add(
      HappyHourSession(
        day: session.day,
        startTime: session.startTime,
        duration: session.duration,
        //offerSet: session.offerSet,
      ),
    );
  }
}
