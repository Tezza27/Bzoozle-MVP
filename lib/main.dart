import 'package:bzoozle/Providers/setOpeningTimesProvider.dart';
import 'package:bzoozle/Providers/venueProvider.dart';
import 'package:bzoozle/Screens/mainMenu.dart';
import 'package:bzoozle/Screens/newVenue.dart';
import 'package:bzoozle/Screens/venueDetail.dart';
import 'package:bzoozle/Screens/venueListing.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'Providers/pageNumberProvider.dart';
import 'Widgets/newVenueScreenWidgets/newOpenHoursWidgets/timeSet.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<VenueProvider>(
            create: (context) => VenueProvider()),
        ChangeNotifierProvider<PageNumberProvider>(
            create: (context) => PageNumberProvider()),
        ChangeNotifierProvider<SetOpeningTimesProvider>(
            create: (context) => SetOpeningTimesProvider()),
      ],
      child: MaterialApp(
          title: 'Bzoozle',
          theme: ThemeData(
            primaryColor: Colors.black,
            splashColor: Colors.orange,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange[800],
                    onPrimary: Colors.black,
                    shadowColor: Colors.yellow[800],
                    elevation: 6,
                    //side: BorderSide(color: Colors.black, width: 1),
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))))),
            checkboxTheme: CheckboxThemeData(
              fillColor: MaterialStateColor.resolveWith(
                (states) {
                  if (states.contains(MaterialState.selected)) {
                    return Colors
                        .orange; // the color when checkbox is selected;
                  }
                  return Colors.orange; //the color when checkbox is unselected;
                },
              ),
            ),
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: Colors.orange[800]),
          ),
          scrollBehavior: const ScrollBehavior(),
          routes: {
            MainMenuScreen.routeName: (context) => MainMenuScreen(),
            NewVenueScreen.routeName: (context) => NewVenueScreen(),
            ListingScreen.routeName: (context) => ListingScreen(),
            VenueDetailScreen.routeName: (context) => VenueDetailScreen(),
            TimeSetScreen.routeName: (context) => TimeSetScreen(),
          },
          home: Container(
            child: FutureBuilder(
              future: _fbApp,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print("Snapshot error: ${snapshot.error.toString()}");
                  return Text("Something went wrong");
                } else if (snapshot.hasData) {
                  return MainMenuScreen();
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          )),
    );
  }
}
