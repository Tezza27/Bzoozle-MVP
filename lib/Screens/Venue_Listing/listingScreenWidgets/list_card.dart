import 'package:bzoozle/Providers/page_number_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/venue_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:provider/provider.dart';
import 'package:flutter_glow/flutter_glow.dart';

Widget listCard(BuildContext context, Venue venue) {
  final venueProvider = Provider.of<VenueProvider>(context);
  final pageNumberProvider = Provider.of<PageNumberProvider>(context);
  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
  bool favourite = false;
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
                Positioned(
                  top: 8.0,
                  right: 0.0,
                  child: GlowButton(
                    onPressed: () {
                      favourite = !favourite;
                      //TODO
                      //save/remove venue ID to/from favorites list in phone memory
                    },
                    color: const Color.fromARGB(75, 0, 0, 0),
                    splashColor: orange1,
                    padding: EdgeInsets.zero,
                    width: 60.0,
                    borderRadius: BorderRadius.circular(45),
                    child: GlowIcon(
                      favourite == false
                          ? Icons.favorite_border
                          : Icons
                              .favorite, //TODO change icon if venue ID is on favorites list in phone memory
                      color: orange1,
                      glowColor: orange1,
                      size: 30,
                      blurRadius: 20,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 4.0, bottom: 0.0, left: 4.0, right: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    venue.venueTheme!.isNotEmpty && venue.venueType!.isNotEmpty
                        ? venue.venueTheme! + " " + venue.venueType!
                        : "",
                    style: themeProvider.getTheme.textTheme.headline4,
                  ),
                  const Spacer(),
                  Text(
                    venue.venueArea!.isEmpty ? "" : venue.venueArea!,
                    style: themeProvider.getTheme.textTheme.headline4,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, bottom: 0.0, left: 4.0, right: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Open Today: 10:00-23:00",
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                  const Spacer(),
                  Text(
                    "\$\$\$\$\$",
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, bottom: 4.0, left: 4.0, right: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Next HH: " "Today 21:00-23:00",
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(Icons.directions_walk, size: 20.0, color: orange1),
                      Text(
                        "295m",
                        style: themeProvider.getTheme.textTheme.bodyText1,
                      )
                    ],
                  ),
                ],
              ),
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
      ),
    ),
  );
}
