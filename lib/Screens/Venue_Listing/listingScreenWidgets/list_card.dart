import 'package:bzoozle/Providers/page_number_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/venue_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:provider/provider.dart';

Widget listCard(BuildContext context, Venue venue) {
  final venueProvider = Provider.of<VenueProvider>(context);
  final pageNumberProvider = Provider.of<PageNumberProvider>(context);
  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
        color: themeProvider.getTheme.cardColor,
        shape: RoundedRectangleBorder(
            // side: const BorderSide(color: Colors.orange, width: 2),
            borderRadius: BorderRadius.circular(10.0)),
        child: InkWell(
          splashColor: themeProvider.getTheme.splashColor,
          onTap: () {
            pageNumberProvider.changePageNumber(0);
            Navigator.pushNamed(context, VenueDetailScreen.routeName,
                arguments: venue);
            venueProvider.loadVenue(venue);
          },
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: <Color>[
                            themeProvider.getTheme.primaryColor,
                            Colors.transparent,
                          ]),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/images/piano_bar_harrahs.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 4.0,
                    left: 0.0,
                    right: 0.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          venue.venueName,
                          style: themeProvider.getTheme.textTheme.headline3,
                        ),
                        Text(
                          venue.venueHostBuilding != null
                              ? "${venue.venueHostBuilding}"
                              : "${venue.venueStreet}",
                          style: themeProvider.getTheme.textTheme.headline3!
                              .copyWith(fontSize: 18.0),
                        )
                      ],
                    ),
                  ),
                  // Insert heart icon
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "OPEN TODAY",
                          style: themeProvider.getTheme.textTheme.headline5,
                        ),
                        Text(
                          "10:00-23:00",
                          style: themeProvider.getTheme.textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "NEXT HH",
                          style: themeProvider.getTheme.textTheme.headline5,
                        ),
                        Text(
                          "10:00-23:00",
                          style: themeProvider.getTheme.textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "PRICE",
                          style: themeProvider.getTheme.textTheme.headline5,
                        ),
                        Text(
                          '\$\$\$\$\$',
                          style: themeProvider.getTheme.textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "DISTANCE",
                          style: themeProvider.getTheme.textTheme.headline5,
                        ),
                        Text(
                          "200m",
                          style: themeProvider.getTheme.textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 8.0, right: 28.0),
                child: Text(
                  venue.venueDescription ?? '',
                  style: themeProvider.getTheme.textTheme.bodyText1,
                ),
              ),
            ],
          ),
        )),
  );
}
