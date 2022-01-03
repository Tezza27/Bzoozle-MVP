import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);

    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Venue Type:",
              style: TextStyle(color: Theme.of(context).splashColor),
            ),
            Text(
              venueProvider.venueTheme! + " " + venueProvider.venueType!,
              style: TextStyle(color: Theme.of(context).splashColor),
            ),
            Text(
              "Description:",
              style: TextStyle(color: Theme.of(context).splashColor),
            ),
            Text(
              venueProvider.venueDescription!,
              style: TextStyle(color: Theme.of(context).splashColor),
            ),
          ],
        ),
      ),
    );
  }
}
