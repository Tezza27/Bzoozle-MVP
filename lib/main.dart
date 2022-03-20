import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/main_menu.dart';
import 'package:bzoozle/Screens/new_venue.dart';
import 'package:bzoozle/Screens/venue_detail.dart';
import 'package:bzoozle/Screens/venue_listing.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newHappyHourWidgets/add_hh_session.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newHappyHourWidgets/new_happy_hours.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newOpenHoursWidgets/new_open_hours.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'Providers/page_number_provider.dart';
import 'Widgets/newVenueScreenWidgets/newOpenHoursWidgets/time_set.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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
      ],
      child: MaterialApp(
          title: 'Bzoozle',
          theme: ThemeData(
            primaryColor: Colors.black,
            splashColor: Colors.orange[800],
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
            MainMenuScreen.routeName: (context) => const MainMenuScreen(),
            NewVenueScreen.routeName: (context) => const NewVenueScreen(),
            ListingScreen.routeName: (context) => const ListingScreen(),
            VenueDetailScreen.routeName: (context) => const VenueDetailScreen(),
            TimeSetScreen.routeName: (context) => const TimeSetScreen(),
            NewOpenHoursScreen.routeName: (context) =>
                const NewOpenHoursScreen(),
            NewHappyHoursScreen.routeName: (context) =>
                const NewHappyHoursScreen(),
            AddHHSessionScreen.routeName: (context) =>
                const AddHHSessionScreen(),
          },
          home: FutureBuilder(
            future: _fbApp,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text("Something went wrong");
              } else if (snapshot.hasData) {
                return const MainMenuScreen();
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )),
    );
  }
}
