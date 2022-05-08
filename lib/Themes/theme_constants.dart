import 'package:flutter/material.dart';

Color black1 = const Color.fromARGB(255, 12, 12, 12);
Color black2 = const Color.fromARGB(255, 20, 20, 20);
Color black3 = const Color.fromARGB(255, 40, 40, 40);
Color orangewhite = const Color.fromARGB(255, 250, 217, 169);
Color white2 = const Color.fromARGB(255, 255, 255, 255);
Color white3 = const Color.fromARGB(255, 255, 255, 255);
Color orange1 = const Color.fromARGB(255, 255, 127, 0);

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: orange1,
  splashColor: black1,
  cardColor: white2,
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //     style: ElevatedButton.styleFrom(
  //   primary: orange1,
  //   onPrimary: black1,
  // )),
  textTheme: const TextTheme(
    //Used for headers on the details pages
    headline1: TextStyle(
        color: Colors.black,
        fontSize: 28.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    headline2: TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    //Used for Text overlaid on images
    headline3: TextStyle(
        color: Color.fromARGB(255, 250, 217, 169),
        fontSize: 26.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    //Used for opening times and happy times cards
    headline4: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    // Used for headers on the lising cards
    headline5: TextStyle(
        color: Colors.black,
        fontSize: 13.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    // Used for the times on the listings cards
    headline6: TextStyle(
        color: Colors.black,
        fontSize: 12.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    //   subtitle1: TextStyle(
    //       fontSize: 14.0,
    //       fontFamily: 'Roboto',
    //       fontWeight: FontWeight.normal,
    //       fontStyle: FontStyle.normal),
    //   subtitle2: TextStyle(
    //       fontSize: 14.0,
    //       fontFamily: 'Roboto',
    //       fontWeight: FontWeight.normal,
    //       fontStyle: FontStyle.normal),
    bodyText1: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    bodyText2: TextStyle(
        color: Colors.black,
        fontSize: 14.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal),
  primaryColor: black1,
  splashColor: orange1,
  cardColor: black1,
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //     style: ElevatedButton.styleFrom(
  //   primary: black1,
  //   onPrimary: orange1,
  // )),
  textTheme: const TextTheme(
    //Used for headers on the details pages
    headline1: TextStyle(
        color: Color.fromARGB(255, 250, 217, 169),
        fontSize: 28.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    headline2: TextStyle(
        color: Color.fromARGB(255, 250, 217, 169),
        fontSize: 24.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    headline3: TextStyle(
        color: Color.fromARGB(255, 250, 217, 169),
        fontSize: 26.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    //Used for opening times and happy times cards
    headline4: TextStyle(
        color: Color.fromARGB(255, 250, 217, 169),
        fontSize: 18.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    // Used for headers on the lising cards
    headline5: TextStyle(
        color: Color.fromARGB(255, 250, 217, 169),
        fontSize: 13.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    // Used for the times on the listings cards
    headline6: TextStyle(
        color: Color.fromARGB(255, 250, 217, 169),
        fontSize: 12.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    //   subtitle1: TextStyle(
    //       fontSize: 14.0,
    //       fontFamily: 'Roboto',
    //       fontWeight: FontWeight.normal,
    //       fontStyle: FontStyle.normal),
    //   subtitle2: TextStyle(
    //       fontSize: 14.0,
    //       fontFamily: 'Roboto',
    //       fontWeight: FontWeight.normal,
    //       fontStyle: FontStyle.normal),
    bodyText1: TextStyle(
        color: Color.fromARGB(255, 250, 217, 169),
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    bodyText2: TextStyle(
        color: Color.fromARGB(255, 250, 217, 169),
        fontSize: 14.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
  ),
);
