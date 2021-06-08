import 'package:flutter/material.dart';
import 'package:bzoozle/Models/venue.dart';

Widget listCard(Venue item) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
        color: Colors.yellow[50],
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.orange, width: 2),
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(item.venueName),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(item.venueHostBuilding ?? ''),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 28.0, bottom: 28.0, left: 8.0, right: 28.0),
              child: Text(item.venueDescription ?? ''),
            ),
          ],
        )),
  );
}
