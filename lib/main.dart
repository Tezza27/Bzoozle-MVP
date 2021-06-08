import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/edit_venue.dart';
import 'package:bzoozle/Screens/venue_listing.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
      create: (context) => VenueProvider(),
      child: MaterialApp(
          title: 'Bzoozle',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            ListingScreen.routeName: (context) => ListingScreen(),
            EditVenueScreen.routeName: (context) => EditVenueScreen(),
          },
          home: Container(
            child: FutureBuilder(
              future: _fbApp,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print("Snapshot error: ${snapshot.error.toString()}");
                  return Text("Something went wrong");
                } else if (snapshot.hasData) {
                  return ListingScreen();
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
