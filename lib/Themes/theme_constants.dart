import 'package:flutter/material.dart';

Color black1 = const Color.fromARGB(255, 12, 12, 12);
Color black2 = const Color.fromARGB(255, 20, 20, 20);
Color black3 = const Color.fromARGB(255, 40, 40, 40);
Color orangeWhite = const Color.fromARGB(255, 250, 217, 169);
Color white2 = const Color.fromARGB(255, 255, 255, 255);
Color white3 = const Color.fromARGB(255, 255, 255, 255);
Color orange1 = const Color.fromARGB(255, 255, 127, 0);
Color orangeCream = const Color.fromARGB(255, 254, 158, 62);
Color lightGrey = const Color.fromARGB(255, 215, 211, 206);
Color darkGrey = const Color.fromARGB(255, 103, 103, 103);

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: orange1,
  splashColor: black1,
  scaffoldBackgroundColor: orangeCream,
  cardColor: white2,
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //     style: ElevatedButton.styleFrom(
  //   primary: orange1,
  //   onPrimary: black1,
  // )),
  textTheme: TextTheme(
    //Used for headers on the details pages
    headline1: const TextStyle(
        color: Colors.black,
        fontSize: 28.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    headline2: const TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    //Used for Text overlaid on images
    headline3: TextStyle(
        color: orangeWhite,
        fontSize: 26.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    //Used for opening times and happy times cards
    headline4: const TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    // Used for headers on the lising cards
    headline5: const TextStyle(
        color: Colors.black,
        fontSize: 13.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    // Used for the times on the listings cards
    headline6: const TextStyle(
        color: Colors.black,
        fontSize: 12.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    subtitle1: const TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontFamily: 'PaytoneOne',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    subtitle2: TextStyle(
        color: lightGrey,
        fontSize: 18.0,
        fontFamily: 'PaytoneOne',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    bodyText1: const TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    bodyText2: const TextStyle(
        color: Colors.black,
        fontSize: 14.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: black1,
      onPrimary: orange1,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: white2,
    filled: true,
    floatingLabelStyle: TextStyle(color: orange1),
    //Borders
    //Enabled and not showing an error
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: orange1, width: 1),
    ),
    //Has Error but no focus
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.red, width: 1),
    ),
    //Has Error and focus
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.red, width: 2),
    ),
    //Default value if borders are null
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: orange1, width: 1),
    ),
    //Enabled and has focus
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: orange1, width: 2),
    ),
    //Disabled
    disabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.grey, width: 1),
    ),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal),
  primaryColor: black1,
  splashColor: orange1,
  cardColor: black1,
  textTheme: TextTheme(
    //Used for headers on the details pages
    headline1: TextStyle(
        color: orangeWhite,
        fontSize: 28.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    headline2: TextStyle(
        color: orangeWhite,
        fontSize: 24.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    headline3: TextStyle(
        color: orangeWhite,
        fontSize: 26.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    //Used for opening times and happy times cards
    headline4: TextStyle(
        color: orangeWhite,
        fontSize: 18.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    // Used for headers on the lising cards
    headline5: TextStyle(
        color: orangeWhite,
        fontSize: 13.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    // Used for the times on the listings cards
    headline6: TextStyle(
        color: orangeWhite,
        fontSize: 12.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    subtitle1: TextStyle(
        color: orangeWhite,
        fontSize: 18.0,
        fontFamily: 'PaytoneOne',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    subtitle2: TextStyle(
        color: darkGrey,
        fontSize: 18.0,
        fontFamily: 'PaytoneOne',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    bodyText1: TextStyle(
        color: orangeWhite,
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
    bodyText2: TextStyle(
        color: orangeWhite,
        fontSize: 14.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: orange1,
      onPrimary: black1,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: white2,
    filled: true,
    floatingLabelStyle: TextStyle(color: orangeWhite),
    //Borders
    //Enabled and not showing an error
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: orangeWhite, width: 1),
    ),
    //Has Error but no focus
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.red, width: 1),
    ),
    //Has Error and focus
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.red, width: 2),
    ),
    //Default value if borders are null
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: orangeWhite, width: 1),
    ),
    //Enabled and has focus
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: orangeWhite, width: 2),
    ),
    //Disabled
    disabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.grey, width: 1),
    ),
  ),
);
