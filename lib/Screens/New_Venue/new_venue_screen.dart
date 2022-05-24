import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/New_Venue/newVenueScreenWidgets/new_scroll_button_list.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
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
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      //backgroundColor: themeProvider.getTheme.primaryColor,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: themeProvider.getTheme.primaryColor,
                pinned: true,
                floating: true,
                snap: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "Add New Venue",
                    style: themeProvider.getTheme.textTheme.headline3,
                  ),
                  centerTitle: true,
                  background: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: <Color>[
                            themeProvider.getTheme.primaryColor,
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
              const NewScrollButtonList(),
              const NewContent(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: themeProvider.getTheme.primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        venueProvider.addVenue();
                        Navigator.pop(context);
                      },
                      child: const Text("Save"),
                    ),
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
