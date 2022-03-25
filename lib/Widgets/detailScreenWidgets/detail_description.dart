import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';
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
            SizedBox(
              height: 80.0,
              width: double.infinity,
              child: Neon(
                text: "DESCRIPTION",
                color: Colors.lightBlue,
                fontSize: 30, //mySize,
                font: NeonFont.Monoton,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8000.0,
                glowing: true,
                //glowingDuration: const Duration(seconds: 2),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
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
