import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Providers/user_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/Contact/contact_screen.dart';
import 'package:bzoozle/Screens/New_Venue/new_venue_screen.dart';
import 'package:bzoozle/Screens/Sign_In/auth_screen.dart';
import 'package:bzoozle/Screens/Venue_Listing/listingScreenWidgets/SearchSortFilterWidgets/sort_filter_form.dart';
import 'package:bzoozle/Screens/Venue_Listing/listingScreenWidgets/list_card.dart';
import 'package:bzoozle/Screens/user_account_screen.dart';
import 'package:bzoozle/Settings/color_experiments.dart';
import 'package:bzoozle/Settings/color_pallet.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListingScreen extends StatefulWidget {
  const ListingScreen({Key? key}) : super(key: key);
  final String title = "BZOOZLE";
  static const String routeName = '/listing';

  @override
  _ListingScreenState createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: themeProvider.getTheme.scaffoldBackgroundColor,
      drawer: Drawer(
        backgroundColor: themeProvider.getTheme.splashColor,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: themeProvider.getTheme.primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'BZOOZLE LAS VEGAS',
                      style: themeProvider.getTheme.textTheme.headline4!
                          .copyWith(color: themeProvider.getTheme.splashColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.brightness_6,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        themeProvider.swapTheme();
                      });
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('My Account',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, UserAccountScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Find Venues',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ListingScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Favourite Venues',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AuthScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Add A Venue',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                venueProvider.unloadVenue();
                Navigator.pop(context);
                Navigator.pushNamed(context, NewVenueScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Contact Bzoozle',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ContactScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Colour Experiment',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ColorExperimentScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Colour pallet',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ColorPalletScreen.routeName);
              },
            ),
            const SizedBox(
              height: 60.0,
            ),
            ListTile(
              title: Text('Close Menu',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 00.0,
            ),
            ListTile(
              title: Text('Log Out',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                userProvider.signOutUser();
                //FirebaseAuth.instance.signOut();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: themeProvider.getTheme.primaryColor,
        title: Text(widget.title,
            style: themeProvider.getTheme.textTheme.headline2),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_alt_rounded,
              size: 36.0,
              color: themeProvider.getTheme.splashColor,
            ),
            onPressed: () {
              //TODO add sort & filter function
              Navigator.pushNamed(context, SortFilterScreen.routeName);
            },
          ),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: venueProvider.streamVenuesList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var venueRawData = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                    child: Column(
                  children: [
                    const CircularProgressIndicator(),
                    Text("No Connection - ${snapshot.connectionState}"),
                  ],
                ));
              case ConnectionState.waiting:
                return Center(
                    child: Column(
                  children: [
                    const CircularProgressIndicator(),
                    Text("No Connection - ${snapshot.connectionState}"),
                  ],
                ));
              case ConnectionState.done:
                return Center(
                    child: Column(
                  children: [
                    const CircularProgressIndicator(),
                    Text("No Connection - ${snapshot.connectionState}"),
                  ],
                ));
              default:
                return venueRawData!.size > 0
                    ? ListView.builder(
                        itemCount: venueRawData.size,
                        itemBuilder: (context, index) {
                          Venue venueObject =
                              Venue.fromSnapshot(venueRawData.docs[index]);

                          return ListCard(
                              iD: venueRawData.docs[index].id,
                              venue: venueObject);
                        })
                    : const Center(child: Text('No data available'));
            }
          } else {
            return Center(
                child: Column(
              children: [
                const CircularProgressIndicator(),
                Text("No Connection - ${snapshot.connectionState}"),
              ],
            ));
          }
        },
      ),
    );
  }
}
