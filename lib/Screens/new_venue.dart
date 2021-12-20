// ignore_for_file: prefer_const_constructors

import 'package:bzoozle/Providers/page_number_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/main_menu.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/new_scroll_button_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewVenueScreen extends StatefulWidget {
  const NewVenueScreen({Key? key}) : super(key: key);
  static const String routeName = '/newVenue';

  @override
  _NewVenueScreenState createState() => _NewVenueScreenState();
}

class _NewVenueScreenState extends State<NewVenueScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                pinned: true,
                floating: true,
                snap: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "Add New Venue",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  centerTitle: true,
                  background: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: <Color>[
                            Theme.of(context).primaryColor,
                            Colors.transparent,
                          ]),
                    ),
                    child: Image.asset(
                      'assets/images/piano_bar_harrahs.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              NewScrollButtonList(),
              const NewContent(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        venueProvider.unloadVenue();
                        pageNumberProvider.changePageNumber(0);
                      },
                      child: const Text("Cancel"),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          venueProvider.addVenue();
                          venueProvider.unloadVenue();
                          pageNumberProvider.changePageNumber(0);
                          Navigator.pushNamed(
                              context, MainMenuScreen.routeName);
                        },
                        child: const Text("Save")),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
