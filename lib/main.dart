import 'package:bzoozle/Providers/confirmation_provider.dart';
import 'package:bzoozle/Providers/new_edit_provider.dart';
import 'package:bzoozle/Providers/user_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/New_Venue/newVenueScreenWidgets/newHappyHourWidgets/add_hh_session.dart';
import 'package:bzoozle/Screens/New_Venue/newVenueScreenWidgets/newHappyHourWidgets/new_happy_hours.dart';
import 'package:bzoozle/Screens/New_Venue/newVenueScreenWidgets/newOpenHoursWidgets/new_open_hours.dart';
import 'package:bzoozle/Screens/New_Venue/newVenueScreenWidgets/newOpenHoursWidgets/time_set.dart';
import 'package:bzoozle/Screens/New_Venue/new_venue_screen.dart';
import 'package:bzoozle/Screens/Sign_In/auth_screen.dart';
import 'package:bzoozle/Screens/Venue_Detail/venue_detail_screen.dart';
import 'package:bzoozle/Screens/Venue_Listing/listingScreenWidgets/SearchSortFilterWidgets/sort_filter_form.dart';
import 'package:bzoozle/Screens/Venue_Listing/venue_listing_screen.dart';
import 'package:bzoozle/Screens/user_account_screen.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

import 'Providers/page_number_provider.dart';
import 'Screens/Contact/contact_screen.dart';
import 'Settings/color_experiments.dart';
import 'Settings/color_pallet.dart';

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
        ChangeNotifierProvider<NewEditProvider>(
            create: (context) => NewEditProvider()),
        ChangeNotifierProvider<ThemeProvider>(
            create: (context) => ThemeProvider(isDarkMode: true)),
        ChangeNotifierProvider<UserProvider>(
            create: (context) => UserProvider()),
        ChangeNotifierProvider<ConfirmationProvider>(
            create: (context) => ConfirmationProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'BZOOZLE LAS VEGAS',
            theme: themeProvider.getTheme,
            scrollBehavior: const ScrollBehavior(),
            routes: {
              NewVenueScreen.routeName: (context) => const NewVenueScreen(),
              ListingScreen.routeName: (context) => const ListingScreen(),
              VenueDetailScreen.routeName: (context) =>
                  const VenueDetailScreen(),
              TimeSetScreen.routeName: (context) => const TimeSetScreen(),
              NewOpenHoursScreen.routeName: (context) =>
                  const NewOpenHoursScreen(),
              NewHappyHoursScreen.routeName: (context) =>
                  const NewHappyHoursScreen(),
              AddHHSessionScreen.routeName: (context) =>
                  const AddHHSessionScreen(),
              ColorExperimentScreen.routeName: (context) =>
                  const ColorExperimentScreen(),
              ColorPalletScreen.routeName: (context) =>
                  const ColorPalletScreen(),
              ContactScreen.routeName: (context) => const ContactScreen(),
              AuthScreen.routeName: (context) => const AuthScreen(),
              UserAccountScreen.routeName: (context) =>
                  const UserAccountScreen(),
              SortFilterScreen.routeName: (context) => const SortFilterScreen(),
            },
            home: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, userSnapshot) {
                if (userSnapshot.hasData) {
                  return FutureBuilder(
                    future: _fbApp,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return const Text("Something went wrong");
                      } else if (snapshot.hasData) {
                        return const ListingScreen();
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  );
                } else {
                  return const AuthScreen();
                }
              },
            ));
      }),
    );
  }
}
