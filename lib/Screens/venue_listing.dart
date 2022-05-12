import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/contact_screen.dart';
import 'package:bzoozle/Screens/new_venue.dart';
import 'package:bzoozle/Settings/color_experiments.dart';
import 'package:bzoozle/Settings/color_pallet.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bzoozle/Widgets/listingScreenWidgets/list_card.dart';
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
    return Scaffold(
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
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Text('BZOOZLE',
                        style: themeProvider.getTheme.textTheme.headline1!
                            .copyWith(
                                color: themeProvider.getTheme.splashColor)),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.brightness_6,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      themeProvider.swapTheme();
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
                // Update the state of the app.
                // ...
                Navigator.pop(context);
                Navigator.pushNamed(context, ListingScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Find Venues',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
                Navigator.pushNamed(context, ListingScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Favourite Venues',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
                Navigator.pushNamed(context, ListingScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Add A Venue',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
                Navigator.pushNamed(context, NewVenueScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Contact Bzoozle',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
                Navigator.pushNamed(context, ContactScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Colour Experiment',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                // Update the state of the app.
                // ...
                // Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pushNamed(context, ColorExperimentScreen.routeName);
              },
            ),
            ListTile(
              title: Text('Colour pallet',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
                Navigator.pushNamed(context, ColorPalletScreen.routeName);
              },
            ),
            const SizedBox(
              height: 80.0,
            ),
            ListTile(
              title: Text('Close Drawer',
                  style: themeProvider.getTheme.textTheme.bodyText1!
                      .copyWith(color: themeProvider.getTheme.primaryColor)),
              onTap: () {
                // Update the state of the app.
                // ...
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

                          return listCard(context, venueObject);
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
