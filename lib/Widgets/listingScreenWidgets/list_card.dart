import 'package:bzoozle/Providers/page_number_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/venue_detail.dart';
import 'package:flutter/material.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:provider/provider.dart';

Widget listCard(BuildContext context, Venue venue) {
  final venueProvider = Provider.of<VenueProvider>(context);
  final pageNumberProvider = Provider.of<PageNumberProvider>(context);
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
        color: Colors.yellow[50],
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.orange, width: 2),
            borderRadius: BorderRadius.circular(10.0)),
        child: InkWell(
          splashColor: Colors.orange,
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
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: <Color>[
                            Colors.black,
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
                          style: TextStyle(
                              color: Colors.orange[800]!,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        // venue.venueHostBuilding != null
                        //     ? Text(
                        //         "${venue.venueHostBuilding}",
                        //         style: TextStyle(
                        //             color: Colors.orange[800]!, fontSize: 18),
                        // )
                        //: Container(),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 28.0, bottom: 28.0, left: 8.0, right: 28.0),
                child: Text(venue.venueDescription ?? ''),
              ),
            ],
          ),
        )),
  );
}
