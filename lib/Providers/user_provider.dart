import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserProvider with ChangeNotifier {
  final String _uid = "";
  String _firstName = "";
  String _surName = "";
  // final String? userImage;
  String _dOB = "";
  String _country = "";
  String _region = "";
  String _city = "";
  String _email = "";
  String _cat = "C";
  bool _dark = false;

//getters
  String get uid => _uid;
  String get firstName => _firstName;
  String get surName => _surName;
  String get dOB => _dOB;
  String get country => _country;
  String get region => _region;
  String get city => _city;
  String get email => _email;
  String get cat => _cat;
  bool get dark => _dark;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> signUpUser(
      String firstName,
      String surName,
      String dOB,
      String country,
      String region,
      String city,
      String email,
      String password,
      String cat,
      bool dark) async {
    bool returnValue = false;
    try {
      UserCredential _authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (_authResult.user != null) {
        loadUser(
            firstName, surName, dOB, country, region, city, email, cat, dark);
        FirebaseFirestore.instance
            .collection('users')
            .doc(_authResult.user?.uid)
            .set({
          'firstName': firstName,
          'surName': surName,
          'dOB': dOB,
          'country': country,
          'region': region,
          'city': city,
          'email': email,
          'cat': cat,
          'dark': dark,
        });
        returnValue = true;
      }
    } catch (e) {
      print(e);
    }
    return returnValue;
  }

  Future<bool> loginUser(String email, String password) async {
    bool returnValue = false;
    try {
      UserCredential _authResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      if (_authResult.user != null) {
        var collection = FirebaseFirestore.instance.collection('users');
        var docSnapshot = await collection.doc(_authResult.user?.uid).get();
        if (docSnapshot.exists) {
          Map<String, dynamic>? data = docSnapshot.data();
          loadUser(
              data?['firstName'],
              data?['surName'],
              data?['dOB'],
              data?['country'],
              data?['region'],
              data?['city'],
              data?['email'],
              data?['cat'],
              data?['dark']);
        }

        returnValue = true;
      }
    } catch (e) {
      print(e);
    }
    return returnValue;
  }

  Future<bool> signOutUser() async {
    bool returnValue = false;
    try {
      await _auth.signOut();
      loadUser("", "", "", "", "", "", "", "", false);
    } catch (e) {
      print(e);
    }
    return returnValue;
  }

  loadUser(
    String firstName,
    String surName,
    String dOB,
    String country,
    String region,
    String city,
    String email,
    String cat,
    bool dark,
  ) {
    changeFirstName(firstName);
    changeSurname(surName);
    changeDob(dOB);
    changeCountry(country);
    changeRegion(region);
    changeCity(city);
    changeEmail(email);
    changeCat(cat);
    changeDark(dark);
  }

//setters
  changeFirstName(String value) {
    _firstName = value;
    notifyListeners();
  }

  changeSurname(String value) {
    _surName = value;
    notifyListeners();
  }

  changeDob(String value) {
    _dOB = value;
    notifyListeners();
  }

  changeCountry(String value) {
    _country = value;
    notifyListeners();
  }

  changeRegion(String value) {
    _region = value;
    notifyListeners();
  }

  changeCity(String value) {
    _city = value;
    notifyListeners();
  }

  changeEmail(String value) {
    _email = value;
    notifyListeners();
  }

  changeCat(String value) {
    _cat = value;
    notifyListeners();
  }

  changeDark(bool value) {
    _dark = value;
    notifyListeners();
  }
}
