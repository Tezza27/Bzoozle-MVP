import 'package:bzoozle/Models/confirmation_model.dart';
import 'package:bzoozle/Services/confirmation_firestore_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ConfirmationProvider with ChangeNotifier {
  final firestoreService = ConfirmationFirestoreService();
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('confirmations');
  String? _descriptionUDate;
  String? _descriptionUName;
  String? _descriptionULocation;
  String? _descriptionUImage;
  String? _descriptionCDate;
  String? _descriptionCName;
  String? _descriptionCLocation;
  String? _descriptionCImage;
  String? _locationUDate;
  String? _locationUName;
  String? _locationULocation;
  String? _locationUImage;
  String? _locationCDate;
  String? _locationCName;
  String? _locationCLocation;
  String? _locationCImage;
  String? _openHoursUDate;
  String? _openHoursUName;
  String? _openHoursULocation;
  String? _openHoursUImage;
  String? _openHoursCDate;
  String? _openHoursCName;
  String? _openHoursCLocation;
  String? _openHoursCImage;
  String? _settingUDate;
  String? _settingUName;
  String? _settingULocation;
  String? _settingUImage;
  String? _settingCDate;
  String? _settingCName;
  String? _settingCLocation;
  String? _settingCImage;
  String? _foodUDate;
  String? _foodUName;
  String? _foodULocation;
  String? _foodUImage;
  String? _foodCDate;
  String? _foodCName;
  String? _foodCLocation;
  String? _foodCImage;
  String? _wifiUDate;
  String? _wifiUName;
  String? _wifiULocation;
  String? _wifiUImage;
  String? _wifiCDate;
  String? _wifiCName;
  String? _wifiCLocation;
  String? _wifiCImage;
  String? _entertainmentUDate;
  String? _entertainmentUName;
  String? _entertainmentULocation;
  String? _entertainmentUImage;
  String? _entertainmentCDate;
  String? _entertainmentCName;
  String? _entertainmentCLocation;
  String? _entertainmentCImage;
  String? _gamesUDate;
  String? _gamesUName;
  String? _gamesULocation;
  String? _gamesUImage;
  String? _gamesCDate;
  String? _gamesCName;
  String? _gamesCLocation;
  String? _gamesCImage;
  String? _parkingUDate;
  String? _parkingUName;
  String? _parkingULocation;
  String? _parkingUImage;
  String? _parkingCDate;
  String? _parkingCName;
  String? _parkingCLocation;
  String? _parkingCImage;
  String? _accessUDate;
  String? _accessUName;
  String? _accessULocation;
  String? _accessUImage;
  String? _accessCDate;
  String? _accessCName;
  String? _accessCLocation;
  String? _accessCImage;
  String? _dressCodeUDate;
  String? _dressCodeUName;
  String? _dressCodeULocation;
  String? _dressCodeUImage;
  String? _dressCodeCDate;
  String? _dressCodeCName;
  String? _dressCodeCLocation;
  String? _dressCodeCImage;
  String? _coverChargeUDate;
  String? _coverChargeUName;
  String? _coverChargeULocation;
  String? _coverChargeUImage;
  String? _coverChargeCDate;
  String? _coverChargeCName;
  String? _coverChargeCLocation;
  String? _coverChargeCImage;
  String? _smokingUDate;
  String? _smokingUName;
  String? _smokingULocation;
  String? _smokingUImage;
  String? _smokingCDate;
  String? _smokingCName;
  String? _smokingCLocation;
  String? _smokingCImage;
  String? _childUDate;
  String? _childUName;
  String? _childULocation;
  String? _childUImage;
  String? _childCDate;
  String? _childCName;
  String? _childCLocation;
  String? _childCImage;
  String? _happyHourUDate;
  String? _happyHourUName;
  String? _happyHourULocation;
  String? _happyHourUImage;
  String? _happyHourCDate;
  String? _happyHourCName;
  String? _happyHourCLocation;
  String? _happyHourCImage;
  String? _feesUDate;
  String? _feesUName;
  String? _feesULocation;
  String? _feesUImage;
  String? _feesCDate;
  String? _feesCName;
  String? _feesCLocation;
  String? _feesCImage;
  String? _priceUDate;
  String? _priceUName;
  String? _priceULocation;
  String? _priceUImage;
  String? _priceCDate;
  String? _priceCName;
  String? _priceCLocation;
  String? _priceCImage;
  String? _beerDomUDate;
  String? _beerDomUName;
  String? _beerDomULocation;
  String? _beerDomUImage;
  String? _beerDomCDate;
  String? _beerDomCName;
  String? _beerDomCLocation;
  String? _beerDomCImage;
  String? _beerImpUDate;
  String? _beerImpUName;
  String? _beerImpULocation;
  String? _beerImpUImage;
  String? _beerImpCDate;
  String? _beerImpCName;
  String? _beerImpCLocation;
  String? _beerImpCImage;
  String? _beerDraftUDate;
  String? _beerDraftUName;
  String? _beerDraftULocation;
  String? _beerDraftUImage;
  String? _beerDraftCDate;
  String? _beerDraftCName;
  String? _beerDraftCLocation;
  String? _beerDraftCImage;
  String? _wellUDate;
  String? _wellUName;
  String? _wellULocation;
  String? _wellUImage;
  String? _wellCDate;
  String? _wellCName;
  String? _wellCLocation;
  String? _wellCImage;
  String? _callUDate;
  String? _callUName;
  String? _callULocation;
  String? _callUImage;
  String? _callCDate;
  String? _callCName;
  String? _callCLocation;
  String? _callCImage;
  String? _cocktailUDate;
  String? _cocktailUName;
  String? _cocktailULocation;
  String? _cocktailUImage;
  String? _cocktailCDate;
  String? _cocktailCName;
  String? _cocktailCLocation;
  String? _cocktailCImage;
  String? _wineUDate;
  String? _wineUName;
  String? _wineULocation;
  String? _wineUImage;
  String? _wineCDate;
  String? _wineCName;
  String? _wineCLocation;
  String? _wineCImage;
  String? _bottleUDate;
  String? _bottleUName;
  String? _bottleULocation;
  String? _bottleUImage;
  String? _bottleCDate;
  String? _bottleCName;
  String? _bottleCLocation;
  String? _bottleCImage;
  String? _breakfastUDate;
  String? _breakfastUName;
  String? _breakfastULocation;
  String? _breakfastUImage;
  String? _breakfastCDate;
  String? _breakfastCName;
  String? _breakfastCLocation;
  String? _breakfastCImage;
  String? _lunchUDate;
  String? _lunchUName;
  String? _lunchULocation;
  String? _lunchUImage;
  String? _lunchCDate;
  String? _lunchCName;
  String? _lunchCLocation;
  String? _lunchCImage;
  String? _dinnerUDate;
  String? _dinnerUName;
  String? _dinnerULocation;
  String? _dinnerUImage;
  String? _dinnerCDate;
  String? _dinnerCName;
  String? _dinnerCLocation;
  String? _dinnerCImage;
  String? _lateUDate;
  String? _lateUName;
  String? _lateULocation;
  String? _lateUImage;
  String? _lateCDate;
  String? _lateCName;
  String? _lateCLocation;
  String? _lateCImage;
  String? _currentVenue;
  String? _currentUserName;
  String? _currentUserLocation;
  String? _currentUserImage;
  bool _changes = false;

//getters
  String? get descriptionUDate => _descriptionUDate;
  String? get descriptionUName => _descriptionUName;
  String? get descriptionULocation => _descriptionULocation;
  String? get descriptionUImage => _descriptionUImage;
  String? get descriptionCDate => _descriptionCDate;
  String? get descriptionCName => _descriptionCName;
  String? get descriptionCLocation => _descriptionCLocation;
  String? get descriptionCImage => _descriptionCImage;
  String? get locationUDate => _locationUDate;
  String? get locationUName => _locationUName;
  String? get locationULocation => _locationULocation;
  String? get locationUImage => _locationUImage;
  String? get locationCDate => _locationCDate;
  String? get locationCName => _locationCName;
  String? get locationCLocation => _locationCLocation;
  String? get locationCImage => _locationCImage;
  String? get openHoursUDate => _openHoursUDate;
  String? get openHoursUName => _openHoursUName;
  String? get openHoursULocation => _openHoursULocation;
  String? get openHoursUImage => _openHoursUImage;
  String? get openHoursCDate => _openHoursCDate;
  String? get openHoursCName => _openHoursCName;
  String? get openHoursCLocation => _openHoursCLocation;
  String? get openHoursCImage => _openHoursCImage;
  String? get settingUDate => _settingUDate;
  String? get settingUName => _settingUName;
  String? get settingULocation => _settingULocation;
  String? get settingUImage => _settingUImage;
  String? get settingCDate => _settingCDate;
  String? get settingCName => _settingCName;
  String? get settingCLocation => _settingCLocation;
  String? get settingCImage => _settingCImage;
  String? get foodUDate => _foodUDate;
  String? get foodUName => _foodUName;
  String? get foodULocation => _foodULocation;
  String? get foodUImage => _foodUImage;
  String? get foodCDate => _foodCDate;
  String? get foodCName => _foodCName;
  String? get foodCLocation => _foodCLocation;
  String? get foodCImage => _foodCImage;
  String? get wifiUDate => _wifiUDate;
  String? get wifiUName => _wifiUName;
  String? get wifiULocation => _wifiULocation;
  String? get wifiUImage => _wifiUImage;
  String? get wifiCDate => _wifiCDate;
  String? get wifiCName => _wifiCName;
  String? get wifiCLocation => _wifiCLocation;
  String? get wifiCImage => _wifiCImage;
  String? get entertainmentUDate => _entertainmentUDate;
  String? get entertainmentUName => _entertainmentUName;
  String? get entertainmentULocation => _entertainmentULocation;
  String? get entertainmentUImage => _entertainmentUImage;
  String? get entertainmentCDate => _entertainmentCDate;
  String? get entertainmentCName => _entertainmentCName;
  String? get entertainmentCLocation => _entertainmentCLocation;
  String? get entertainmentCImage => _entertainmentCImage;
  String? get gamesUDate => _gamesUDate;
  String? get gamesUName => _gamesUName;
  String? get gamesULocation => _gamesULocation;
  String? get gamesUImage => _gamesUImage;
  String? get gamesCDate => _gamesCDate;
  String? get gamesCName => _gamesCName;
  String? get gamesCLocation => _gamesCLocation;
  String? get gamesCImage => _gamesCImage;
  String? get parkingUDate => _parkingUDate;
  String? get parkingUName => _parkingUName;
  String? get parkingULocation => _parkingULocation;
  String? get parkingUImage => _parkingUImage;
  String? get parkingCDate => _parkingCDate;
  String? get parkingCName => _parkingCName;
  String? get parkingCLocation => _parkingCLocation;
  String? get parkingCImage => _parkingCImage;
  String? get accessUDate => _accessUDate;
  String? get accessUName => _accessUName;
  String? get accessULocation => _accessULocation;
  String? get accessUImage => _accessUImage;
  String? get accessCDate => _accessCDate;
  String? get accessCName => _accessCName;
  String? get accessCLocation => _accessCLocation;
  String? get accessCImage => _accessCImage;
  String? get dressCodeUDate => _dressCodeUDate;
  String? get dressCodeUName => _dressCodeUName;
  String? get dressCodeULocation => _dressCodeULocation;
  String? get dressCodeUImage => _dressCodeUImage;
  String? get dressCodeCDate => _dressCodeCDate;
  String? get dressCodeCName => _dressCodeCName;
  String? get dressCodeCLocation => _dressCodeCLocation;
  String? get dressCodeCImage => _dressCodeCImage;
  String? get coverChargeUDate => _coverChargeUDate;
  String? get coverChargeUName => _coverChargeUName;
  String? get coverChargeULocation => _coverChargeULocation;
  String? get coverChargeUImage => _coverChargeUImage;
  String? get coverChargeCDate => _coverChargeCDate;
  String? get coverChargeCName => _coverChargeCName;
  String? get coverChargeCLocation => _coverChargeCLocation;
  String? get coverChargeCImage => _coverChargeCImage;
  String? get smokingUDate => _smokingUDate;
  String? get smokingUName => _smokingUName;
  String? get smokingULocation => _smokingULocation;
  String? get smokingUImage => _smokingUImage;
  String? get smokingCDate => _smokingCDate;
  String? get smokingCName => _smokingCName;
  String? get smokingCLocation => _smokingCLocation;
  String? get smokingCImage => _smokingCImage;
  String? get childUDate => _childUDate;
  String? get childUName => _childUName;
  String? get childULocation => _childULocation;
  String? get childUImage => _childUImage;
  String? get childCDate => _childCDate;
  String? get childCName => _childCName;
  String? get childCLocation => _childCLocation;
  String? get childCImage => _childCImage;
  String? get happyHourUDate => _happyHourUDate;
  String? get happyHourUName => _happyHourUName;
  String? get happyHourULocation => _happyHourULocation;
  String? get happyHourUImage => _happyHourUImage;
  String? get happyHourCDate => _happyHourCDate;
  String? get happyHourCName => _happyHourCName;
  String? get happyHourCLocation => _happyHourCLocation;
  String? get happyHourCImage => _happyHourCImage;
  String? get feesUDate => _feesUDate;
  String? get feesUName => _feesUName;
  String? get feesULocation => _feesULocation;
  String? get feesUImage => _feesUImage;
  String? get feesCDate => _feesCDate;
  String? get feesCName => _feesCName;
  String? get feesCLocation => _feesCLocation;
  String? get feesCImage => _feesCImage;
  String? get priceUDate => _priceUDate;
  String? get priceUName => _priceUName;
  String? get priceULocation => _priceULocation;
  String? get priceUImage => _priceUImage;
  String? get priceCDate => _priceCDate;
  String? get priceCName => _priceCName;
  String? get priceCLocation => _priceCLocation;
  String? get priceCImage => _priceCImage;
  String? get beerDomUDate => _beerDomUDate;
  String? get beerDomUName => _beerDomUName;
  String? get beerDomULocation => _beerDomULocation;
  String? get beerDomUImage => _beerDomUImage;
  String? get beerDomCDate => _beerDomCDate;
  String? get beerDomCName => _beerDomCName;
  String? get beerDomCLocation => _beerDomCLocation;
  String? get beerDomCImage => _beerDomCImage;
  String? get beerImpUDate => _beerImpUDate;
  String? get beerImpUName => _beerImpUName;
  String? get beerImpULocation => _beerImpULocation;
  String? get beerImpUImage => _beerImpUImage;
  String? get beerImpCDate => _beerImpCDate;
  String? get beerImpCName => _beerImpCName;
  String? get beerImpCLocation => _beerImpCLocation;
  String? get beerImpCImage => _beerImpCImage;
  String? get beerDraftUDate => _beerDraftUDate;
  String? get beerDraftUName => _beerDraftUName;
  String? get beerDraftULocation => _beerDraftULocation;
  String? get beerDraftUImage => _beerDraftUImage;
  String? get beerDraftCDate => _beerDraftCDate;
  String? get beerDraftCName => _beerDraftCName;
  String? get beerDraftCLocation => _beerDraftCLocation;
  String? get beerDraftCImage => _beerDraftCImage;
  String? get wellUDate => _wellUDate;
  String? get wellUName => _wellUName;
  String? get wellULocation => _wellULocation;
  String? get wellUImage => _wellUImage;
  String? get wellCDate => _wellCDate;
  String? get wellCName => _wellCName;
  String? get wellCLocation => _wellCLocation;
  String? get wellCImage => _wellCImage;
  String? get callUDate => _callUDate;
  String? get callUName => _callUName;
  String? get callULocation => _callULocation;
  String? get callUImage => _callUImage;
  String? get callCDate => _callCDate;
  String? get callCName => _callCName;
  String? get callCLocation => _callCLocation;
  String? get callCImage => _callCImage;
  String? get cocktailUDate => _cocktailUDate;
  String? get cocktailUName => _cocktailUName;
  String? get cocktailULocation => _cocktailULocation;
  String? get cocktailUImage => _cocktailUImage;
  String? get cocktailCDate => _cocktailCDate;
  String? get cocktailCName => _cocktailCName;
  String? get cocktailCLocation => _cocktailCLocation;
  String? get cocktailCImage => _cocktailCImage;
  String? get wineUDate => _wineUDate;
  String? get wineUName => _wineUName;
  String? get wineULocation => _wineULocation;
  String? get wineUImage => _wineUImage;
  String? get wineCDate => _wineCDate;
  String? get wineCName => _wineCName;
  String? get wineCLocation => _wineCLocation;
  String? get wineCImage => _wineCImage;
  String? get bottleUDate => _bottleUDate;
  String? get bottleUName => _bottleUName;
  String? get bottleULocation => _bottleULocation;
  String? get bottleUImage => _bottleUImage;
  String? get bottleCDate => _bottleCDate;
  String? get bottleCName => _bottleCName;
  String? get bottleCLocation => _bottleCLocation;
  String? get bottleCImage => _bottleCImage;
  String? get breakfastUDate => _breakfastUDate;
  String? get breakfastUName => _breakfastUName;
  String? get breakfastULocation => _breakfastULocation;
  String? get breakfastUImage => _breakfastUImage;
  String? get breakfastCDate => _breakfastCDate;
  String? get breakfastCName => _breakfastCName;
  String? get breakfastCLocation => _breakfastCLocation;
  String? get breakfastCImage => _breakfastCImage;
  String? get lunchUDate => _lunchUDate;
  String? get lunchUName => _lunchUName;
  String? get lunchULocation => _lunchULocation;
  String? get lunchUImage => _lunchUImage;
  String? get lunchCDate => _lunchCDate;
  String? get lunchCName => _lunchCName;
  String? get lunchCLocation => _lunchCLocation;
  String? get lunchCImage => _lunchCImage;
  String? get dinnerUDate => _dinnerUDate;
  String? get dinnerUName => _dinnerUName;
  String? get dinnerULocation => _dinnerULocation;
  String? get dinnerUImage => _dinnerUImage;
  String? get dinnerCDate => _dinnerCDate;
  String? get dinnerCName => _dinnerCName;
  String? get dinnerCLocation => _dinnerCLocation;
  String? get dinnerCImage => _dinnerCImage;
  String? get lateUDate => _lateUDate;
  String? get lateUName => _lateUName;
  String? get lateULocation => _lateULocation;
  String? get lateUImage => _lateUImage;
  String? get lateCDate => _lateCDate;
  String? get lateCName => _lateCName;
  String? get lateCLocation => _lateCLocation;
  String? get lateCImage => _lateCImage;
  String? get currentVenue => _currentVenue;
  String? get currentUserName => _currentUserName;
  String? get currentUserLocation => _currentUserLocation;
  String? get currentUserImage => _currentUserImage;
  bool get changes => _changes;

//setters
  changeDescriptionUpdate() {
    _descriptionUDate = DateTime.now().toString();
    _descriptionUName = _currentUserName;
    _descriptionULocation = _currentUserLocation;
    _descriptionUImage = _currentUserImage;
    _descriptionCDate = null;
    _descriptionCName = null;
    _descriptionCLocation = null;
    _descriptionCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeDescriptionConfirm() {
    _descriptionCDate = DateTime.now().toString();
    _descriptionCName = _currentUserName;
    _descriptionCLocation = _currentUserLocation;
    _descriptionCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeLocationUpdate() {
    _locationUDate = DateTime.now().toString();
    _locationUName = _currentUserName;
    _locationULocation = _currentUserLocation;
    _locationUImage = _currentUserImage;
    _locationCDate = null;
    _locationCName = null;
    _locationCLocation = null;
    _locationCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeLocationConfirm() {
    _locationCDate = DateTime.now().toString();
    _locationCName = _currentUserName;
    _locationCLocation = _currentUserLocation;
    _locationCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeOpenHoursUpdate() {
    _openHoursUDate = DateTime.now().toString();
    _openHoursUName = _currentUserName;
    _openHoursULocation = _currentUserLocation;
    _openHoursUImage = _currentUserImage;
    _openHoursCDate = null;
    _openHoursCName = null;
    _openHoursCLocation = null;
    _openHoursCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeOpenHoursConfirm() {
    _openHoursCDate = DateTime.now().toString();
    _openHoursCName = _currentUserName;
    _openHoursCLocation = _currentUserLocation;
    _openHoursCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeSettingUpdate() {
    _settingUDate = DateTime.now().toString();
    _settingUName = _currentUserName;
    _settingULocation = _currentUserLocation;
    _settingUImage = _currentUserImage;
    _settingCDate = null;
    _settingCName = null;
    _settingCLocation = null;
    _settingCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeSettingConfirm() {
    _settingCDate = DateTime.now().toString();
    _settingCName = _currentUserName;
    _settingCLocation = _currentUserLocation;
    _settingCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeFoodUpdate() {
    _foodUDate = DateTime.now().toString();
    _foodUName = _currentUserName;
    _foodULocation = _currentUserLocation;
    _foodUImage = _currentUserImage;
    _foodCDate = null;
    _foodCName = null;
    _foodCLocation = null;
    _foodCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeFoodConfirm() {
    _foodCDate = DateTime.now().toString();
    _foodCName = _currentUserName;
    _foodCLocation = _currentUserLocation;
    _foodCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeWifiUpdate() {
    _wifiUDate = DateTime.now().toString();
    _wifiUName = _currentUserName;
    _wifiULocation = _currentUserLocation;
    _wifiUImage = _currentUserImage;
    _wifiCDate = null;
    _wifiCName = null;
    _wifiCLocation = null;
    _wifiCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeWifiConfirm() {
    _wifiCDate = DateTime.now().toString();
    _wifiCName = _currentUserName;
    _wifiCLocation = _currentUserLocation;
    _wifiCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeEntertainmentUpdate() {
    _entertainmentUDate = DateTime.now().toString();
    _entertainmentUName = _currentUserName;
    _entertainmentULocation = _currentUserLocation;
    _entertainmentUImage = _currentUserImage;
    _entertainmentCDate = null;
    _entertainmentCName = null;
    _entertainmentCLocation = null;
    _entertainmentCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeEntertainmentConfirm() {
    _entertainmentCDate = DateTime.now().toString();
    _entertainmentCName = _currentUserName;
    _entertainmentCLocation = _currentUserLocation;
    _entertainmentCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeGamesUpdate() {
    _gamesUDate = DateTime.now().toString();
    _gamesUName = _currentUserName;
    _gamesULocation = _currentUserLocation;
    _gamesUImage = _currentUserImage;
    _gamesCDate = null;
    _gamesCName = null;
    _gamesCLocation = null;
    _gamesCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeGamesConfirm() {
    _gamesCDate = DateTime.now().toString();
    _gamesCName = _currentUserName;
    _gamesCLocation = _currentUserLocation;
    _gamesCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeParkingUpdate() {
    _parkingUDate = DateTime.now().toString();
    _parkingUName = _currentUserName;
    _parkingULocation = _currentUserLocation;
    _parkingUImage = _currentUserImage;
    _parkingCDate = null;
    _parkingCName = null;
    _parkingCLocation = null;
    _parkingCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeParkingConfirm() {
    _parkingCDate = DateTime.now().toString();
    _parkingCName = _currentUserName;
    _parkingCLocation = _currentUserLocation;
    _parkingCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeAccessUpdate() {
    _accessUDate = DateTime.now().toString();
    _accessUName = _currentUserName;
    _accessULocation = _currentUserLocation;
    _accessUImage = _currentUserImage;
    _accessCDate = null;
    _accessCName = null;
    _accessCLocation = null;
    _accessCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeAccessConfirm() {
    _accessCDate = DateTime.now().toString();
    _accessCName = _currentUserName;
    _accessCLocation = _currentUserLocation;
    _accessCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeDressCodeUpdate() {
    _dressCodeUDate = DateTime.now().toString();
    _dressCodeUName = _currentUserName;
    _dressCodeULocation = _currentUserLocation;
    _dressCodeUImage = _currentUserImage;
    _dressCodeCDate = null;
    _dressCodeCName = null;
    _dressCodeCLocation = null;
    _dressCodeCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeDressCodeConfirm() {
    _dressCodeCDate = DateTime.now().toString();
    _dressCodeCName = _currentUserName;
    _dressCodeCLocation = _currentUserLocation;
    _dressCodeCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeCoverChargeUpdate() {
    _coverChargeUDate = DateTime.now().toString();
    _coverChargeUName = _currentUserName;
    _coverChargeULocation = _currentUserLocation;
    _coverChargeUImage = _currentUserImage;
    _coverChargeCDate = null;
    _coverChargeCName = null;
    _coverChargeCLocation = null;
    _coverChargeCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeCoverChargeConfirm() {
    _coverChargeCDate = DateTime.now().toString();
    _coverChargeCName = _currentUserName;
    _coverChargeCLocation = _currentUserLocation;
    _coverChargeCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeSmokingUpdate() {
    _smokingUDate = DateTime.now().toString();
    _smokingUName = _currentUserName;
    _smokingULocation = _currentUserLocation;
    _smokingUImage = _currentUserImage;
    _smokingCDate = null;
    _smokingCName = null;
    _smokingCLocation = null;
    _smokingCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeSmokingConfirm() {
    _smokingCDate = DateTime.now().toString();
    _smokingCName = _currentUserName;
    _smokingCLocation = _currentUserLocation;
    _smokingCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeChildUpdate() {
    _childUDate = DateTime.now().toString();
    _childUName = _currentUserName;
    _childULocation = _currentUserLocation;
    _childUImage = _currentUserImage;
    _childCDate = null;
    _childCName = null;
    _childCLocation = null;
    _childCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeChildConfirm() {
    _childCDate = DateTime.now().toString();
    _childCName = _currentUserName;
    _childCLocation = _currentUserLocation;
    _childCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeHappyHourUpdate() {
    _happyHourUDate = DateTime.now().toString();
    _happyHourUName = _currentUserName;
    _happyHourULocation = _currentUserLocation;
    _happyHourUImage = _currentUserImage;
    _happyHourCDate = null;
    _happyHourCName = null;
    _happyHourCLocation = null;
    _happyHourCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeHappyHourConfirm() {
    _happyHourCDate = DateTime.now().toString();
    _happyHourCName = _currentUserName;
    _happyHourCLocation = _currentUserLocation;
    _happyHourCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeFeesUpdate() {
    _feesUDate = DateTime.now().toString();
    _feesUName = _currentUserName;
    _feesULocation = _currentUserLocation;
    _feesUImage = _currentUserImage;
    _feesCDate = null;
    _feesCName = null;
    _feesCLocation = null;
    _feesCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeFeesConfirm() {
    _feesCDate = DateTime.now().toString();
    _feesCName = _currentUserName;
    _feesCLocation = _currentUserLocation;
    _feesCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changePriceUpdate() {
    _priceUDate = DateTime.now().toString();
    _priceUName = _currentUserName;
    _priceULocation = _currentUserLocation;
    _priceUImage = _currentUserImage;
    _priceCDate = null;
    _priceCName = null;
    _priceCLocation = null;
    _priceCImage = null;
    _changes = true;
    notifyListeners();
  }

  changePriceConfirm() {
    _priceCDate = DateTime.now().toString();
    _priceCName = _currentUserName;
    _priceCLocation = _currentUserLocation;
    _priceCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeBeerDomUpdate() {
    _beerDomUDate = DateTime.now().toString();
    _beerDomUName = _currentUserName;
    _beerDomULocation = _currentUserLocation;
    _beerDomUImage = _currentUserImage;
    _beerDomCDate = null;
    _beerDomCName = null;
    _beerDomCLocation = null;
    _beerDomCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeBeerDomConfirm() {
    _beerDomCDate = DateTime.now().toString();
    _beerDomCName = _currentUserName;
    _beerDomCLocation = _currentUserLocation;
    _beerDomCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeBeerImpUpdate() {
    _beerImpUDate = DateTime.now().toString();
    _beerImpUName = _currentUserName;
    _beerImpULocation = _currentUserLocation;
    _beerImpUImage = _currentUserImage;
    _beerImpCDate = null;
    _beerImpCName = null;
    _beerImpCLocation = null;
    _beerImpCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeBeerImpConfirm() {
    _beerImpCDate = DateTime.now().toString();
    _beerImpCName = _currentUserName;
    _beerImpCLocation = _currentUserLocation;
    _beerImpCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeBeerDraftUpdate() {
    _beerDraftUDate = DateTime.now().toString();
    _beerDraftUName = _currentUserName;
    _beerDraftULocation = _currentUserLocation;
    _beerDraftUImage = _currentUserImage;
    _beerDraftCDate = null;
    _beerDraftCName = null;
    _beerDraftCLocation = null;
    _beerDraftCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeBeerDraftConfirm() {
    _beerDraftCDate = DateTime.now().toString();
    _beerDraftCName = _currentUserName;
    _beerDraftCLocation = _currentUserLocation;
    _beerDraftCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeWellUpdate() {
    _wellUDate = DateTime.now().toString();
    _wellUName = _currentUserName;
    _wellULocation = _currentUserLocation;
    _wellUImage = _currentUserImage;
    _wellCDate = null;
    _wellCName = null;
    _wellCLocation = null;
    _wellCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeWellConfirm() {
    _wellCDate = DateTime.now().toString();
    _wellCName = _currentUserName;
    _wellCLocation = _currentUserLocation;
    _wellCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeCallUpdate() {
    _callUDate = DateTime.now().toString();
    _callUName = _currentUserName;
    _callULocation = _currentUserLocation;
    _callUImage = _currentUserImage;
    _callCDate = null;
    _callCName = null;
    _callCLocation = null;
    _callCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeCallConfirm() {
    _callCDate = DateTime.now().toString();
    _callCName = _currentUserName;
    _callCLocation = _currentUserLocation;
    _callCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeCocktailUpdate() {
    _cocktailUDate = DateTime.now().toString();
    _cocktailUName = _currentUserName;
    _cocktailULocation = _currentUserLocation;
    _cocktailUImage = _currentUserImage;
    _cocktailCDate = null;
    _cocktailCName = null;
    _cocktailCLocation = null;
    _cocktailCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeCocktailConfirm() {
    _cocktailCDate = DateTime.now().toString();
    _cocktailCName = _currentUserName;
    _cocktailCLocation = _currentUserLocation;
    _cocktailCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeWineUpdate() {
    _wineUDate = DateTime.now().toString();
    _wineUName = _currentUserName;
    _wineULocation = _currentUserLocation;
    _wineUImage = _currentUserImage;
    _wineCDate = null;
    _wineCName = null;
    _wineCLocation = null;
    _wineCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeWineConfirm() {
    _wineCDate = DateTime.now().toString();
    _wineCName = _currentUserName;
    _wineCLocation = _currentUserLocation;
    _wineCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeBottleUpdate() {
    _bottleUDate = DateTime.now().toString();
    _bottleUName = _currentUserName;
    _bottleULocation = _currentUserLocation;
    _bottleUImage = _currentUserImage;
    _bottleCDate = null;
    _bottleCName = null;
    _bottleCLocation = null;
    _bottleCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeBottleConfirm() {
    _bottleCDate = DateTime.now().toString();
    _bottleCName = _currentUserName;
    _bottleCLocation = _currentUserLocation;
    _bottleCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeBreakfastUpdate() {
    _breakfastUDate = DateTime.now().toString();
    _breakfastUName = _currentUserName;
    _breakfastULocation = _currentUserLocation;
    _breakfastUImage = _currentUserImage;
    _breakfastCDate = null;
    _breakfastCName = null;
    _breakfastCLocation = null;
    _breakfastCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeBreakfastConfirm() {
    _breakfastCDate = DateTime.now().toString();
    _breakfastCName = _currentUserName;
    _breakfastCLocation = _currentUserLocation;
    _breakfastCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeLunchUpdate() {
    _lunchUDate = DateTime.now().toString();
    _lunchUName = _currentUserName;
    _lunchULocation = _currentUserLocation;
    _lunchUImage = _currentUserImage;
    _lunchCDate = null;
    _lunchCName = null;
    _lunchCLocation = null;
    _lunchCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeLunchConfirm() {
    _lunchCDate = DateTime.now().toString();
    _lunchCName = _currentUserName;
    _lunchCLocation = _currentUserLocation;
    _lunchCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeDinnerUpdate() {
    _dinnerUDate = DateTime.now().toString();
    _dinnerUName = _currentUserName;
    _dinnerULocation = _currentUserLocation;
    _dinnerUImage = _currentUserImage;
    _dinnerCDate = null;
    _dinnerCName = null;
    _dinnerCLocation = null;
    _dinnerCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeDinnerConfirm() {
    _dinnerCDate = DateTime.now().toString();
    _dinnerCName = _currentUserName;
    _dinnerCLocation = _currentUserLocation;
    _dinnerCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeLateUpdate() {
    _lateUDate = DateTime.now().toString();
    _lateUName = _currentUserName;
    _lateULocation = _currentUserLocation;
    _lateUImage = _currentUserImage;
    _lateCDate = null;
    _lateCName = null;
    _lateCLocation = null;
    _lateCImage = null;
    _changes = true;
    notifyListeners();
  }

  changeLateConfirm() {
    _lateCDate = DateTime.now().toString();
    _lateCName = _currentUserName;
    _lateCLocation = _currentUserLocation;
    _lateCImage = _currentUserImage;
    _changes = true;
    notifyListeners();
  }

  changeCurrentVenue(String value) {
    _currentVenue = value;
    fetchConfirmations();
    notifyListeners();
  }

  changeCurrentUser(String userName, String userLocation, String userImage) {
    _currentUserName = userName;
    _currentUserLocation = userLocation;
    _currentUserImage = userImage;
    notifyListeners();
  }

  updateConfirmation() async {
    var currentConfirmation = Confirmation(
      venueId: currentVenue,
      descriptionUDate: descriptionUDate,
      descriptionUName: descriptionUName,
      descriptionULocation: descriptionULocation,
      descriptionUImage: descriptionUImage,
      descriptionCDate: descriptionCDate,
      descriptionCName: descriptionCName,
      descriptionCLocation: descriptionCLocation,
      descriptionCImage: descriptionCImage,
      locationUDate: locationUDate,
      locationUName: locationUName,
      locationULocation: locationULocation,
      locationUImage: locationUImage,
      locationCDate: locationCDate,
      locationCName: locationCName,
      locationCLocation: locationCLocation,
      locationCImage: locationCImage,
      openHoursUDate: openHoursUDate,
      openHoursUName: openHoursUName,
      openHoursULocation: openHoursULocation,
      openHoursUImage: openHoursUImage,
      openHoursCDate: openHoursCDate,
      openHoursCName: openHoursCName,
      openHoursCLocation: openHoursCLocation,
      openHoursCImage: openHoursCImage,
      settingUDate: settingUDate,
      settingUName: settingUName,
      settingULocation: settingULocation,
      settingUImage: settingUImage,
      settingCDate: settingCDate,
      settingCName: settingCName,
      settingCLocation: settingCLocation,
      settingCImage: settingCImage,
      foodUDate: foodUDate,
      foodUName: foodUName,
      foodULocation: foodULocation,
      foodUImage: foodUImage,
      foodCDate: foodCDate,
      foodCName: foodCName,
      foodCLocation: foodCLocation,
      foodCImage: foodCImage,
      wifiUDate: wifiUDate,
      wifiUName: wifiUName,
      wifiULocation: wifiULocation,
      wifiUImage: wifiUImage,
      wifiCDate: wifiCDate,
      wifiCName: wifiCName,
      wifiCLocation: wifiCLocation,
      wifiCImage: wifiCImage,
      entertainmentUDate: entertainmentUDate,
      entertainmentUName: entertainmentUName,
      entertainmentULocation: entertainmentULocation,
      entertainmentUImage: entertainmentUImage,
      entertainmentCDate: entertainmentCDate,
      entertainmentCName: entertainmentCName,
      entertainmentCLocation: entertainmentCLocation,
      entertainmentCImage: entertainmentCImage,
      gamesUDate: gamesUDate,
      gamesUName: gamesUName,
      gamesULocation: gamesULocation,
      gamesUImage: gamesUImage,
      gamesCDate: gamesCDate,
      gamesCName: gamesCName,
      gamesCLocation: gamesCLocation,
      gamesCImage: gamesCImage,
      parkingUDate: parkingUDate,
      parkingUName: parkingUName,
      parkingULocation: parkingULocation,
      parkingUImage: parkingUImage,
      parkingCDate: parkingCDate,
      parkingCName: parkingCName,
      parkingCLocation: parkingCLocation,
      parkingCImage: parkingCImage,
      accessUDate: accessUDate,
      accessUName: accessUName,
      accessULocation: accessULocation,
      accessUImage: accessUImage,
      accessCDate: accessCDate,
      accessCName: accessCName,
      accessCLocation: accessCLocation,
      accessCImage: accessCImage,
      dressCodeUDate: dressCodeUDate,
      dressCodeUName: dressCodeUName,
      dressCodeULocation: dressCodeULocation,
      dressCodeUImage: dressCodeUImage,
      dressCodeCDate: dressCodeCDate,
      dressCodeCName: dressCodeCName,
      dressCodeCLocation: dressCodeCLocation,
      dressCodeCImage: dressCodeCImage,
      coverChargeUDate: coverChargeUDate,
      coverChargeUName: coverChargeUName,
      coverChargeULocation: coverChargeULocation,
      coverChargeUImage: coverChargeUImage,
      coverChargeCDate: coverChargeCDate,
      coverChargeCName: coverChargeCName,
      coverChargeCLocation: coverChargeCLocation,
      coverChargeCImage: coverChargeCImage,
      smokingUDate: smokingUDate,
      smokingUName: smokingUName,
      smokingULocation: smokingULocation,
      smokingUImage: smokingUImage,
      smokingCDate: smokingCDate,
      smokingCName: smokingCName,
      smokingCLocation: smokingCLocation,
      smokingCImage: smokingCImage,
      childUDate: childUDate,
      childUName: childUName,
      childULocation: childULocation,
      childUImage: childUImage,
      childCDate: childCDate,
      childCName: childCName,
      childCLocation: childCLocation,
      childCImage: childCImage,
      happyHourUDate: happyHourUDate,
      happyHourUName: happyHourUName,
      happyHourULocation: happyHourULocation,
      happyHourUImage: happyHourUImage,
      happyHourCDate: happyHourCDate,
      happyHourCName: happyHourCName,
      happyHourCLocation: happyHourCLocation,
      happyHourCImage: happyHourCImage,
      feesUDate: feesUDate,
      feesUName: feesUName,
      feesULocation: feesULocation,
      feesUImage: feesUImage,
      feesCDate: feesCDate,
      feesCName: feesCName,
      feesCLocation: feesCLocation,
      feesCImage: feesCImage,
      priceUDate: priceUDate,
      priceUName: priceUName,
      priceULocation: priceULocation,
      priceUImage: priceUImage,
      priceCDate: priceCDate,
      priceCName: priceCName,
      priceCLocation: priceCLocation,
      priceCImage: priceCImage,
      beerDomUDate: beerDomUDate,
      beerDomUName: beerDomUName,
      beerDomULocation: beerDomULocation,
      beerDomUImage: beerDomUImage,
      beerDomCDate: beerDomCDate,
      beerDomCName: beerDomCName,
      beerDomCLocation: beerDomCLocation,
      beerDomCImage: beerDomCImage,
      beerImpUDate: beerImpUDate,
      beerImpUName: beerImpUName,
      beerImpULocation: beerImpULocation,
      beerImpUImage: beerImpUImage,
      beerImpCDate: beerImpCDate,
      beerImpCName: beerImpCName,
      beerImpCLocation: beerImpCLocation,
      beerImpCImage: beerImpCImage,
      beerDraftUDate: beerDraftUDate,
      beerDraftUName: beerDraftUName,
      beerDraftULocation: beerDraftULocation,
      beerDraftUImage: beerDraftUImage,
      beerDraftCDate: beerDraftCDate,
      beerDraftCName: beerDraftCName,
      beerDraftCLocation: beerDraftCLocation,
      beerDraftCImage: beerDraftCImage,
      wellUDate: wellUDate,
      wellUName: wellUName,
      wellULocation: wellULocation,
      wellUImage: wellUImage,
      wellCDate: wellCDate,
      wellCName: wellCName,
      wellCLocation: wellCLocation,
      wellCImage: wellCImage,
      callUDate: callUDate,
      callUName: callUName,
      callULocation: callULocation,
      callUImage: callUImage,
      callCDate: callCDate,
      callCName: callCName,
      callCLocation: callCLocation,
      callCImage: callCImage,
      cocktailUDate: cocktailUDate,
      cocktailUName: cocktailUName,
      cocktailULocation: cocktailULocation,
      cocktailUImage: cocktailUImage,
      cocktailCDate: cocktailCDate,
      cocktailCName: cocktailCName,
      cocktailCLocation: cocktailCLocation,
      cocktailCImage: cocktailCImage,
      wineUDate: wineUDate,
      wineUName: wineUName,
      wineULocation: wineULocation,
      wineUImage: wineUImage,
      wineCDate: wineCDate,
      wineCName: wineCName,
      wineCLocation: wineCLocation,
      wineCImage: wineCImage,
      bottleUDate: bottleUDate,
      bottleUName: bottleUName,
      bottleULocation: bottleULocation,
      bottleUImage: bottleUImage,
      bottleCDate: bottleCDate,
      bottleCName: bottleCName,
      bottleCLocation: bottleCLocation,
      bottleCImage: bottleCImage,
      breakfastUDate: breakfastUDate,
      breakfastUName: breakfastUName,
      breakfastULocation: breakfastULocation,
      breakfastUImage: breakfastUImage,
      breakfastCDate: breakfastCDate,
      breakfastCName: breakfastCName,
      breakfastCLocation: breakfastCLocation,
      breakfastCImage: breakfastCImage,
      lunchUDate: lunchUDate,
      lunchUName: lunchUName,
      lunchULocation: lunchULocation,
      lunchUImage: lunchUImage,
      lunchCDate: lunchCDate,
      lunchCName: lunchCName,
      lunchCLocation: lunchCLocation,
      lunchCImage: lunchCImage,
      dinnerUDate: dinnerUDate,
      dinnerUName: dinnerUName,
      dinnerULocation: dinnerULocation,
      dinnerUImage: dinnerUImage,
      dinnerCDate: dinnerCDate,
      dinnerCName: dinnerCName,
      dinnerCLocation: dinnerCLocation,
      dinnerCImage: dinnerCImage,
      lateUDate: lateUDate,
      lateUName: lateUName,
      lateULocation: lateULocation,
      lateUImage: lateUImage,
      lateCDate: lateCDate,
      lateCName: lateCName,
      lateCLocation: lateCLocation,
      lateCImage: lateCImage,
    );
    try {
      await collection
          .doc(currentVenue)
          .set(currentConfirmation.toJson(), SetOptions(merge: true));
    } catch (e) {
      print(e);
    }
    _changes = false;
  }

  fetchConfirmations() async {
    var collection = FirebaseFirestore.instance.collection('confirmations');
    var docSnapshot = await collection.doc(currentVenue).get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();

      _descriptionUDate = data?['descriptionUDate'];
      _descriptionUName = data?['descriptionUName'];
      _descriptionULocation = data?['descriptionULocation'];
      _descriptionUImage = data?['descriptionUImage'];
      _descriptionCDate = data?['descriptionCDate'];
      _descriptionCName = data?['descriptionCName'];
      _descriptionCLocation = data?['descriptionCLocation'];
      _descriptionCImage = data?['descriptionCImage'];
      _locationUDate = data?['locationUDate'];
      _locationUName = data?['locationUName'];
      _locationULocation = data?['locationULocation'];
      _locationUImage = data?['locationUImage'];
      _locationCDate = data?['locationCDate'];
      _locationCName = data?['locationCName'];
      _locationCLocation = data?['locationCLocation'];
      _locationCImage = data?['locationCImage'];
      _openHoursUDate = data?['openHoursUDate'];
      _openHoursUName = data?['openHoursUName'];
      _openHoursULocation = data?['openHoursULocation'];
      _openHoursUImage = data?['openHoursUImage'];
      _openHoursCDate = data?['openHoursCDate'];
      _openHoursCName = data?['openHoursCName'];
      _openHoursCLocation = data?['openHoursCLocation'];
      _openHoursCImage = data?['openHoursCImage'];
      _settingUDate = data?['settingUDate'];
      _settingUName = data?['settingUName'];
      _settingULocation = data?['settingULocation'];
      _settingUImage = data?['settingUImage'];
      _settingCDate = data?['settingCDate'];
      _settingCName = data?['settingCName'];
      _settingCLocation = data?['settingCLocation'];
      _settingCImage = data?['settingCImage'];
      _foodUDate = data?['foodUDate'];
      _foodUName = data?['foodUName'];
      _foodULocation = data?['foodULocation'];
      _foodUImage = data?['foodUImage'];
      _foodCDate = data?['foodCDate'];
      _foodCName = data?['foodCName'];
      _foodCLocation = data?['foodCLocation'];
      _foodCImage = data?['foodCImage'];
      _wifiUDate = data?['wifiUDate'];
      _wifiUName = data?['wifiUName'];
      _wifiULocation = data?['wifiULocation'];
      _wifiUImage = data?['wifiUImage'];
      _wifiCDate = data?['wifiCDate'];
      _wifiCName = data?['wifiCName'];
      _wifiCLocation = data?['wifiCLocation'];
      _wifiCImage = data?['wifiCImage'];
      _entertainmentUDate = data?['entertainmentUDate'];
      _entertainmentUName = data?['entertainmentUName'];
      _entertainmentULocation = data?['entertainmentULocation'];
      _entertainmentUImage = data?['entertainmentUImage'];
      _entertainmentCDate = data?['entertainmentCDate'];
      _entertainmentCName = data?['entertainmentCName'];
      _entertainmentCLocation = data?['entertainmentCLocation'];
      _entertainmentCImage = data?['entertainmentCImage'];
      _gamesUDate = data?['gamesUDate'];
      _gamesUName = data?['gamesUName'];
      _gamesULocation = data?['gamesULocation'];
      _gamesUImage = data?['gamesUImage'];
      _gamesCDate = data?['gamesCDate'];
      _gamesCName = data?['gamesCName'];
      _gamesCLocation = data?['gamesCLocation'];
      _gamesCImage = data?['gamesCImage'];
      _parkingUDate = data?['parkingUDate'];
      _parkingUName = data?['parkingUName'];
      _parkingULocation = data?['parkingULocation'];
      _parkingUImage = data?['parkingUImage'];
      _parkingCDate = data?['parkingCDate'];
      _parkingCName = data?['parkingCName'];
      _parkingCLocation = data?['parkingCLocation'];
      _parkingCImage = data?['parkingCImage'];
      _accessUDate = data?['accessUDate'];
      _accessUName = data?['accessUName'];
      _accessULocation = data?['accessULocation'];
      _accessUImage = data?['accessUImage'];
      _accessCDate = data?['accessCDate'];
      _accessCName = data?['accessCName'];
      _accessCLocation = data?['accessCLocation'];
      _accessCImage = data?['accessCImage'];
      _dressCodeUDate = data?['dressCodeUDate'];
      _dressCodeUName = data?['dressCodeUName'];
      _dressCodeULocation = data?['dressCodeULocation'];
      _dressCodeUImage = data?['dressCodeUImage'];
      _dressCodeCDate = data?['dressCodeCDate'];
      _dressCodeCName = data?['dressCodeCName'];
      _dressCodeCLocation = data?['dressCodeCLocation'];
      _dressCodeCImage = data?['dressCodeCImage'];
      _coverChargeUDate = data?['coverChargeUDate'];
      _coverChargeUName = data?['coverChargeUName'];
      _coverChargeULocation = data?['coverChargeULocation'];
      _coverChargeUImage = data?['coverChargeUImage'];
      _coverChargeCDate = data?['coverChargeCDate'];
      _coverChargeCName = data?['coverChargeCName'];
      _coverChargeCLocation = data?['coverChargeCLocation'];
      _coverChargeCImage = data?['coverChargeCImage'];
      _smokingUDate = data?['smokingUDate'];
      _smokingUName = data?['smokingUName'];
      _smokingULocation = data?['smokingULocation'];
      _smokingUImage = data?['smokingUImage'];
      _smokingCDate = data?['smokingCDate'];
      _smokingCName = data?['smokingCName'];
      _smokingCLocation = data?['smokingCLocation'];
      _smokingCImage = data?['smokingCImage'];
      _childUDate = data?['childUDate'];
      _childUName = data?['childUName'];
      _childULocation = data?['childULocation'];
      _childUImage = data?['childUImage'];
      _childCDate = data?['childCDate'];
      _childCName = data?['childCName'];
      _childCLocation = data?['childCLocation'];
      _childCImage = data?['childCImage'];
      _happyHourUDate = data?['happyHourUDate'];
      _happyHourUName = data?['happyHourUName'];
      _happyHourULocation = data?['happyHourULocation'];
      _happyHourUImage = data?['happyHourUImage'];
      _happyHourCDate = data?['happyHourCDate'];
      _happyHourCName = data?['happyHourCName'];
      _happyHourCLocation = data?['happyHourCLocation'];
      _happyHourCImage = data?['happyHourCImage'];
      _feesUDate = data?['feesUDate'];
      _feesUName = data?['feesUName'];
      _feesULocation = data?['feesULocation'];
      _feesUImage = data?['feesUImage'];
      _feesCDate = data?['feesCDate'];
      _feesCName = data?['feesCName'];
      _feesCLocation = data?['feesCLocation'];
      _feesCImage = data?['feesCImage'];
      _priceUDate = data?['priceUDate'];
      _priceUName = data?['priceUName'];
      _priceULocation = data?['priceULocation'];
      _priceUImage = data?['priceUImage'];
      _priceCDate = data?['priceCDate'];
      _priceCName = data?['priceCName'];
      _priceCLocation = data?['priceCLocation'];
      _priceCImage = data?['priceCImage'];
      _beerDomUDate = data?['beerDomUDate'];
      _beerDomUName = data?['beerDomUName'];
      _beerDomULocation = data?['beerDomULocation'];
      _beerDomUImage = data?['beerDomUImage'];
      _beerDomCDate = data?['beerDomCDate'];
      _beerDomCName = data?['beerDomCName'];
      _beerDomCLocation = data?['beerDomCLocation'];
      _beerDomCImage = data?['beerDomCImage'];
      _beerImpUDate = data?['beerImpUDate'];
      _beerImpUName = data?['beerImpUName'];
      _beerImpULocation = data?['beerImpULocation'];
      _beerImpUImage = data?['beerImpUImage'];
      _beerImpCDate = data?['beerImpCDate'];
      _beerImpCName = data?['beerImpCName'];
      _beerImpCLocation = data?['beerImpCLocation'];
      _beerImpCImage = data?['beerImpCImage'];
      _beerDraftUDate = data?['beerDraftUDate'];
      _beerDraftUName = data?['beerDraftUName'];
      _beerDraftULocation = data?['beerDraftULocation'];
      _beerDraftUImage = data?['beerDraftUImage'];
      _beerDraftCDate = data?['beerDraftCDate'];
      _beerDraftCName = data?['beerDraftCName'];
      _beerDraftCLocation = data?['beerDraftCLocation'];
      _beerDraftCImage = data?['beerDraftCImage'];
      _wellUDate = data?['wellUDate'];
      _wellUName = data?['wellUName'];
      _wellULocation = data?['wellULocation'];
      _wellUImage = data?['wellUImage'];
      _wellCDate = data?['wellCDate'];
      _wellCName = data?['wellCName'];
      _wellCLocation = data?['wellCLocation'];
      _wellCImage = data?['wellCImage'];
      _callUDate = data?['callUDate'];
      _callUName = data?['callUName'];
      _callULocation = data?['callULocation'];
      _callUImage = data?['callUImage'];
      _callCDate = data?['callCDate'];
      _callCName = data?['callCName'];
      _callCLocation = data?['callCLocation'];
      _callCImage = data?['callCImage'];
      _cocktailUDate = data?['cocktailUDate'];
      _cocktailUName = data?['cocktailUName'];
      _cocktailULocation = data?['cocktailULocation'];
      _cocktailUImage = data?['cocktailUImage'];
      _cocktailCDate = data?['cocktailCDate'];
      _cocktailCName = data?['cocktailCName'];
      _cocktailCLocation = data?['cocktailCLocation'];
      _cocktailCImage = data?['cocktailCImage'];
      _wineUDate = data?['wineUDate'];
      _wineUName = data?['wineUName'];
      _wineULocation = data?['wineULocation'];
      _wineUImage = data?['wineUImage'];
      _wineCDate = data?['wineCDate'];
      _wineCName = data?['wineCName'];
      _wineCLocation = data?['wineCLocation'];
      _wineCImage = data?['wineCImage'];
      _bottleUDate = data?['bottleUDate'];
      _bottleUName = data?['bottleUName'];
      _bottleULocation = data?['bottleULocation'];
      _bottleUImage = data?['bottleUImage'];
      _bottleCDate = data?['bottleCDate'];
      _bottleCName = data?['bottleCName'];
      _bottleCLocation = data?['bottleCLocation'];
      _bottleCImage = data?['bottleCImage'];
      _breakfastUDate = data?['breakfastUDate'];
      _breakfastUName = data?['breakfastUName'];
      _breakfastULocation = data?['breakfastULocation'];
      _breakfastUImage = data?['breakfastUImage'];
      _breakfastCDate = data?['breakfastCDate'];
      _breakfastCName = data?['breakfastCName'];
      _breakfastCLocation = data?['breakfastCLocation'];
      _breakfastCImage = data?['breakfastCImage'];
      _lunchUDate = data?['lunchUDate'];
      _lunchUName = data?['lunchUName'];
      _lunchULocation = data?['lunchULocation'];
      _lunchUImage = data?['lunchUImage'];
      _lunchCDate = data?['lunchCDate'];
      _lunchCName = data?['lunchCName'];
      _lunchCLocation = data?['lunchCLocation'];
      _lunchCImage = data?['lunchCImage'];
      _dinnerUDate = data?['dinnerUDate'];
      _dinnerUName = data?['dinnerUName'];
      _dinnerULocation = data?['dinnerULocation'];
      _dinnerUImage = data?['dinnerUImage'];
      _dinnerCDate = data?['dinnerCDate'];
      _dinnerCName = data?['dinnerCName'];
      _dinnerCLocation = data?['dinnerCLocation'];
      _dinnerCImage = data?['dinnerCImage'];
      _lateUDate = data?['lateUDate'];
      _lateUName = data?['lateUName'];
      _lateULocation = data?['lateULocation'];
      _lateUImage = data?['lateUImage'];
      _lateCDate = data?['lateCDate'];
      _lateCName = data?['lateCName'];
      _lateCLocation = data?['lateCLocation'];
      _lateCImage = data?['lateCImage'];
    } else {
      _descriptionUDate = null;
      _descriptionUName = null;
      _descriptionULocation = null;
      _descriptionUImage = null;
      _descriptionCDate = null;
      _descriptionCName = null;
      _descriptionCLocation = null;
      _descriptionCImage = null;
      _locationUDate = null;
      _locationUName = null;
      _locationULocation = null;
      _locationUImage = null;
      _locationCDate = null;
      _locationCName = null;
      _locationCLocation = null;
      _locationCImage = null;
      _openHoursUDate = null;
      _openHoursUName = null;
      _openHoursULocation = null;
      _openHoursUImage = null;
      _openHoursCDate = null;
      _openHoursCName = null;
      _openHoursCLocation = null;
      _openHoursCImage = null;
      _settingUDate = null;
      _settingUName = null;
      _settingULocation = null;
      _settingUImage = null;
      _settingCDate = null;
      _settingCName = null;
      _settingCLocation = null;
      _settingCImage = null;
      _foodUDate = null;
      _foodUName = null;
      _foodULocation = null;
      _foodUImage = null;
      _foodCDate = null;
      _foodCName = null;
      _foodCLocation = null;
      _foodCImage = null;
      _wifiUDate = null;
      _wifiUName = null;
      _wifiULocation = null;
      _wifiUImage = null;
      _wifiCDate = null;
      _wifiCName = null;
      _wifiCLocation = null;
      _wifiCImage = null;
      _entertainmentUDate = null;
      _entertainmentUName = null;
      _entertainmentULocation = null;
      _entertainmentUImage = null;
      _entertainmentCDate = null;
      _entertainmentCName = null;
      _entertainmentCLocation = null;
      _entertainmentCImage = null;
      _gamesUDate = null;
      _gamesUName = null;
      _gamesULocation = null;
      _gamesUImage = null;
      _gamesCDate = null;
      _gamesCName = null;
      _gamesCLocation = null;
      _gamesCImage = null;
      _parkingUDate = null;
      _parkingUName = null;
      _parkingULocation = null;
      _parkingUImage = null;
      _parkingCDate = null;
      _parkingCName = null;
      _parkingCLocation = null;
      _parkingCImage = null;
      _accessUDate = null;
      _accessUName = null;
      _accessULocation = null;
      _accessUImage = null;
      _accessCDate = null;
      _accessCName = null;
      _accessCLocation = null;
      _accessCImage = null;
      _dressCodeUDate = null;
      _dressCodeUName = null;
      _dressCodeULocation = null;
      _dressCodeUImage = null;
      _dressCodeCDate = null;
      _dressCodeCName = null;
      _dressCodeCLocation = null;
      _dressCodeCImage = null;
      _coverChargeUDate = null;
      _coverChargeUName = null;
      _coverChargeULocation = null;
      _coverChargeUImage = null;
      _coverChargeCDate = null;
      _coverChargeCName = null;
      _coverChargeCLocation = null;
      _coverChargeCImage = null;
      _smokingUDate = null;
      _smokingUName = null;
      _smokingULocation = null;
      _smokingUImage = null;
      _smokingCDate = null;
      _smokingCName = null;
      _smokingCLocation = null;
      _smokingCImage = null;
      _childUDate = null;
      _childUName = null;
      _childULocation = null;
      _childUImage = null;
      _childCDate = null;
      _childCName = null;
      _childCLocation = null;
      _childCImage = null;
      _happyHourUDate = null;
      _happyHourUName = null;
      _happyHourULocation = null;
      _happyHourUImage = null;
      _happyHourCDate = null;
      _happyHourCName = null;
      _happyHourCLocation = null;
      _happyHourCImage = null;
      _feesUDate = null;
      _feesUName = null;
      _feesULocation = null;
      _feesUImage = null;
      _feesCDate = null;
      _feesCName = null;
      _feesCLocation = null;
      _feesCImage = null;
      _priceUDate = null;
      _priceUName = null;
      _priceULocation = null;
      _priceUImage = null;
      _priceCDate = null;
      _priceCName = null;
      _priceCLocation = null;
      _priceCImage = null;
      _beerDomUDate = null;
      _beerDomUName = null;
      _beerDomULocation = null;
      _beerDomUImage = null;
      _beerDomCDate = null;
      _beerDomCName = null;
      _beerDomCLocation = null;
      _beerDomCImage = null;
      _beerImpUDate = null;
      _beerImpUName = null;
      _beerImpULocation = null;
      _beerImpUImage = null;
      _beerImpCDate = null;
      _beerImpCName = null;
      _beerImpCLocation = null;
      _beerImpCImage = null;
      _beerDraftUDate = null;
      _beerDraftUName = null;
      _beerDraftULocation = null;
      _beerDraftUImage = null;
      _beerDraftCDate = null;
      _beerDraftCName = null;
      _beerDraftCLocation = null;
      _beerDraftCImage = null;
      _wellUDate = null;
      _wellUName = null;
      _wellULocation = null;
      _wellUImage = null;
      _wellCDate = null;
      _wellCName = null;
      _wellCLocation = null;
      _wellCImage = null;
      _callUDate = null;
      _callUName = null;
      _callULocation = null;
      _callUImage = null;
      _callCDate = null;
      _callCName = null;
      _callCLocation = null;
      _callCImage = null;
      _cocktailUDate = null;
      _cocktailUName = null;
      _cocktailULocation = null;
      _cocktailUImage = null;
      _cocktailCDate = null;
      _cocktailCName = null;
      _cocktailCLocation = null;
      _cocktailCImage = null;
      _wineUDate = null;
      _wineUName = null;
      _wineULocation = null;
      _wineUImage = null;
      _wineCDate = null;
      _wineCName = null;
      _wineCLocation = null;
      _wineCImage = null;
      _bottleUDate = null;
      _bottleUName = null;
      _bottleULocation = null;
      _bottleUImage = null;
      _bottleCDate = null;
      _bottleCName = null;
      _bottleCLocation = null;
      _bottleCImage = null;
      _breakfastUDate = null;
      _breakfastUName = null;
      _breakfastULocation = null;
      _breakfastUImage = null;
      _breakfastCDate = null;
      _breakfastCName = null;
      _breakfastCLocation = null;
      _breakfastCImage = null;
      _lunchUDate = null;
      _lunchUName = null;
      _lunchULocation = null;
      _lunchUImage = null;
      _lunchCDate = null;
      _lunchCName = null;
      _lunchCLocation = null;
      _lunchCImage = null;
      _dinnerUDate = null;
      _dinnerUName = null;
      _dinnerULocation = null;
      _dinnerUImage = null;
      _dinnerCDate = null;
      _dinnerCName = null;
      _dinnerCLocation = null;
      _dinnerCImage = null;
      _lateUDate = null;
      _lateUName = null;
      _lateULocation = null;
      _lateUImage = null;
      _lateCDate = null;
      _lateCName = null;
      _lateCLocation = null;
      _lateCImage = null;
      _currentVenue = null;
      _currentUserName = null;
      _currentUserLocation = null;
      _currentUserImage = null;
      _changes = false;
    }
  }
}

//   setUpdateDetails(String updateType) {
//     switch (updateType) {
//       case "description":
//         _descriptionUDate = DateTime.now().toString();
//         _descriptionUName = _currentUserName;
//         _descriptionULocation = _currentUserLocation;
//         _descriptionUImage = _currentUserImage;
//         break;
//       case "location":
//         _locationUDate = DateTime.now().toString();
//         _locationUName = _currentUserName;
//         _locationULocation = _currentUserLocation;
//         _locationUImage = _currentUserImage;
//         break;
//       case "openHours":
//         _openHoursUDate = DateTime.now().toString();
//         _openHoursUName = _currentUserName;
//         _openHoursULocation = _currentUserLocation;
//         _openHoursUImage = _currentUserImage;
//         break;
//       case "setting":
//         _settingUDate = DateTime.now().toString();
//         _settingUName = _currentUserName;
//         _settingULocation = _currentUserLocation;
//         _settingUImage = _currentUserImage;
//         break;
//       case "food":
//         _foodUDate = DateTime.now().toString();
//         _foodUName = _currentUserName;
//         _foodULocation = _currentUserLocation;
//         _foodUImage = _currentUserImage;
//         break;
//       case "wifi":
//         _wifiUDate = DateTime.now().toString();
//         _wifiUName = _currentUserName;
//         _wifiULocation = _currentUserLocation;
//         _wifiUImage = _currentUserImage;
//         break;
//       case "entertainment":
//         _entertainmentUDate = DateTime.now().toString();
//         _entertainmentUName = _currentUserName;
//         _entertainmentULocation = _currentUserLocation;
//         _entertainmentUImage = _currentUserImage;
//         break;
//       case "games":
//         _gamesUDate = DateTime.now().toString();
//         _gamesUName = _currentUserName;
//         _gamesULocation = _currentUserLocation;
//         _gamesUImage = _currentUserImage;
//         break;
//       case "parking":
//         _parkingUDate = DateTime.now().toString();
//         _parkingUName = _currentUserName;
//         _parkingULocation = _currentUserLocation;
//         _parkingUImage = _currentUserImage;
//         break;
//       case "access":
//         _accessUDate = DateTime.now().toString();
//         _accessUName = _currentUserName;
//         _accessULocation = _currentUserLocation;
//         _accessUImage = _currentUserImage;
//         break;
//       case "dressCode":
//         _dressCodeUDate = DateTime.now().toString();
//         _dressCodeUName = _currentUserName;
//         _dressCodeULocation = _currentUserLocation;
//         _dressCodeUImage = _currentUserImage;
//         break;
//       case "coverCharge":
//         _coverChargeUDate = DateTime.now().toString();
//         _coverChargeUName = _currentUserName;
//         _coverChargeULocation = _currentUserLocation;
//         _coverChargeUImage = _currentUserImage;
//         break;
//       case "smoking":
//         _smokingUDate = DateTime.now().toString();
//         _smokingUName = _currentUserName;
//         _smokingULocation = _currentUserLocation;
//         _smokingUImage = _currentUserImage;
//         break;
//       case "child":
//         _childUDate = DateTime.now().toString();
//         _childUName = _currentUserName;
//         _childULocation = _currentUserLocation;
//         _childUImage = _currentUserImage;
//         break;
//       case "happyHour":
//         _happyHourUDate = DateTime.now().toString();
//         _happyHourUName = _currentUserName;
//         _happyHourULocation = _currentUserLocation;
//         _happyHourUImage = _currentUserImage;
//         break;
//       case "fees":
//         _feesUDate = DateTime.now().toString();
//         _feesUName = _currentUserName;
//         _feesULocation = _currentUserLocation;
//         _feesUImage = _currentUserImage;
//         break;
//       case "price":
//         _priceUDate = DateTime.now().toString();
//         _priceUName = _currentUserName;
//         _priceULocation = _currentUserLocation;
//         _priceUImage = _currentUserImage;
//         break;
//       case "beerDom":
//         _beerDomUDate = DateTime.now().toString();
//         _beerDomUName = _currentUserName;
//         _beerDomULocation = _currentUserLocation;
//         _beerDomUImage = _currentUserImage;
//         break;
//       case "beerImp":
//         _beerImpUDate = DateTime.now().toString();
//         _beerImpUName = _currentUserName;
//         _beerImpULocation = _currentUserLocation;
//         _beerImpUImage = _currentUserImage;
//         break;
//       case "beerDraft":
//         _beerDraftUDate = DateTime.now().toString();
//         _beerDraftUName = _currentUserName;
//         _beerDraftULocation = _currentUserLocation;
//         _beerDraftUImage = _currentUserImage;
//         break;
//       case "well":
//         _wellUDate = DateTime.now().toString();
//         _wellUName = _currentUserName;
//         _wellULocation = _currentUserLocation;
//         _wellUImage = _currentUserImage;
//         break;
//       case "call":
//         _callUDate = DateTime.now().toString();
//         _callUName = _currentUserName;
//         _callULocation = _currentUserLocation;
//         _callUImage = _currentUserImage;
//         break;
//       case "cocktail":
//         _cocktailUDate = DateTime.now().toString();
//         _cocktailUName = _currentUserName;
//         _cocktailULocation = _currentUserLocation;
//         _cocktailUImage = _currentUserImage;
//         break;
//       case "wine":
//         _wineUDate = DateTime.now().toString();
//         _wineUName = _currentUserName;
//         _wineULocation = _currentUserLocation;
//         _wineUImage = _currentUserImage;
//         break;
//       case "bottle":
//         _bottleUDate = DateTime.now().toString();
//         _bottleUName = _currentUserName;
//         _bottleULocation = _currentUserLocation;
//         _bottleUImage = _currentUserImage;
//         break;
//       case "breakfast":
//         _breakfastUDate = DateTime.now().toString();
//         _breakfastUName = _currentUserName;
//         _breakfastULocation = _currentUserLocation;
//         _breakfastUImage = _currentUserImage;
//         break;
//       case "lunch":
//         _lunchUDate = DateTime.now().toString();
//         _lunchUName = _currentUserName;
//         _lunchULocation = _currentUserLocation;
//         _lunchUImage = _currentUserImage;
//         break;
//       case "dinner":
//         _dinnerUDate = DateTime.now().toString();
//         _dinnerUName = _currentUserName;
//         _dinnerULocation = _currentUserLocation;
//         _dinnerUImage = _currentUserImage;
//         break;
//       case "late":
//         _lateUDate = DateTime.now().toString();
//         _lateUName = _currentUserName;
//         _lateULocation = _currentUserLocation;
//         _lateUImage = _currentUserImage;
//         break;
//       default:
//         break;
// //update Firestore
//     }
//   }

//   setConfirmDetails(String updateType) {
//     switch (updateType) {
//       case "description":
//         _descriptionCDate = DateTime.now().toString();
//         _descriptionCName = _currentUserName;
//         _descriptionCLocation = _currentUserLocation;
//         _descriptionCImage = _currentUserImage;
//         break;
//       case "location":
//         _locationCDate = DateTime.now().toString();
//         _locationCName = _currentUserName;
//         _locationCLocation = _currentUserLocation;
//         _locationCImage = _currentUserImage;
//         break;
//       case "openHours":
//         _openHoursCDate = DateTime.now().toString();
//         _openHoursCName = _currentUserName;
//         _openHoursCLocation = _currentUserLocation;
//         _openHoursCImage = _currentUserImage;
//         break;
//       case "setting":
//         _settingCDate = DateTime.now().toString();
//         _settingCName = _currentUserName;
//         _settingCLocation = _currentUserLocation;
//         _settingCImage = _currentUserImage;
//         break;
//       case "food":
//         _foodCDate = DateTime.now().toString();
//         _foodCName = _currentUserName;
//         _foodCLocation = _currentUserLocation;
//         _foodCImage = _currentUserImage;
//         break;
//       case "wifi":
//         _wifiCDate = DateTime.now().toString();
//         _wifiCName = _currentUserName;
//         _wifiCLocation = _currentUserLocation;
//         _wifiCImage = _currentUserImage;
//         break;
//       case "entertainment":
//         _entertainmentCDate = DateTime.now().toString();
//         _entertainmentCName = _currentUserName;
//         _entertainmentCLocation = _currentUserLocation;
//         _entertainmentCImage = _currentUserImage;
//         break;
//       case "games":
//         _gamesCDate = DateTime.now().toString();
//         _gamesCName = _currentUserName;
//         _gamesCLocation = _currentUserLocation;
//         _gamesCImage = _currentUserImage;
//         break;
//       case "parking":
//         _parkingCDate = DateTime.now().toString();
//         _parkingCName = _currentUserName;
//         _parkingCLocation = _currentUserLocation;
//         _parkingCImage = _currentUserImage;
//         break;
//       case "access":
//         _accessCDate = DateTime.now().toString();
//         _accessCName = _currentUserName;
//         _accessCLocation = _currentUserLocation;
//         _accessCImage = _currentUserImage;
//         break;
//       case "dressCode":
//         _dressCodeCDate = DateTime.now().toString();
//         _dressCodeCName = _currentUserName;
//         _dressCodeCLocation = _currentUserLocation;
//         _dressCodeCImage = _currentUserImage;
//         break;
//       case "coverCharge":
//         _coverChargeCDate = DateTime.now().toString();
//         _coverChargeCName = _currentUserName;
//         _coverChargeCLocation = _currentUserLocation;
//         _coverChargeCImage = _currentUserImage;
//         break;
//       case "smoking":
//         _smokingCDate = DateTime.now().toString();
//         _smokingCName = _currentUserName;
//         _smokingCLocation = _currentUserLocation;
//         _smokingCImage = _currentUserImage;
//         break;
//       case "child":
//         _childCDate = DateTime.now().toString();
//         _childCName = _currentUserName;
//         _childCLocation = _currentUserLocation;
//         _childCImage = _currentUserImage;
//         break;
//       case "happyHour":
//         _happyHourCDate = DateTime.now().toString();
//         _happyHourCName = _currentUserName;
//         _happyHourCLocation = _currentUserLocation;
//         _happyHourCImage = _currentUserImage;
//         break;
//       case "fees":
//         _feesCDate = DateTime.now().toString();
//         _feesCName = _currentUserName;
//         _feesCLocation = _currentUserLocation;
//         _feesCImage = _currentUserImage;
//         break;
//       case "price":
//         _priceCDate = DateTime.now().toString();
//         _priceCName = _currentUserName;
//         _priceCLocation = _currentUserLocation;
//         _priceCImage = _currentUserImage;
//         break;
//       case "beerDom":
//         _beerDomCDate = DateTime.now().toString();
//         _beerDomCName = _currentUserName;
//         _beerDomCLocation = _currentUserLocation;
//         _beerDomCImage = _currentUserImage;
//         break;
//       case "beerImp":
//         _beerImpCDate = DateTime.now().toString();
//         _beerImpCName = _currentUserName;
//         _beerImpCLocation = _currentUserLocation;
//         _beerImpCImage = _currentUserImage;
//         break;
//       case "beerDraft":
//         _beerDraftCDate = DateTime.now().toString();
//         _beerDraftCName = _currentUserName;
//         _beerDraftCLocation = _currentUserLocation;
//         _beerDraftCImage = _currentUserImage;
//         break;
//       case "well":
//         _wellCDate = DateTime.now().toString();
//         _wellCName = _currentUserName;
//         _wellCLocation = _currentUserLocation;
//         _wellCImage = _currentUserImage;
//         break;
//       case "call":
//         _callCDate = DateTime.now().toString();
//         _callCName = _currentUserName;
//         _callCLocation = _currentUserLocation;
//         _callCImage = _currentUserImage;
//         break;
//       case "cocktail":
//         _cocktailCDate = DateTime.now().toString();
//         _cocktailCName = _currentUserName;
//         _cocktailCLocation = _currentUserLocation;
//         _cocktailCImage = _currentUserImage;
//         break;
//       case "wine":
//         _wineCDate = DateTime.now().toString();
//         _wineCName = _currentUserName;
//         _wineCLocation = _currentUserLocation;
//         _wineCImage = _currentUserImage;
//         break;
//       case "bottle":
//         _bottleCDate = DateTime.now().toString();
//         _bottleCName = _currentUserName;
//         _bottleCLocation = _currentUserLocation;
//         _bottleCImage = _currentUserImage;
//         break;
//       case "breakfast":
//         _breakfastCDate = DateTime.now().toString();
//         _breakfastCName = _currentUserName;
//         _breakfastCLocation = _currentUserLocation;
//         _breakfastCImage = _currentUserImage;
//         break;
//       case "lunch":
//         _lunchCDate = DateTime.now().toString();
//         _lunchCName = _currentUserName;
//         _lunchCLocation = _currentUserLocation;
//         _lunchCImage = _currentUserImage;
//         break;
//       case "dinner":
//         _dinnerCDate = DateTime.now().toString();
//         _dinnerCName = _currentUserName;
//         _dinnerCLocation = _currentUserLocation;
//         _dinnerCImage = _currentUserImage;
//         break;
//       case "late":
//         _lateCDate = DateTime.now().toString();
//         _lateCName = _currentUserName;
//         _lateCLocation = _currentUserLocation;
//         _lateCImage = _currentUserImage;
//         break;
//       default:
//         break;
// //update Firestore
//     }
//   }

