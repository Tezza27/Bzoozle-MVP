import 'package:bzoozle/Screens/New_Venue/new_venue_screen.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/circular_avatar.dart';
import 'package:flutter/material.dart';

AlertDialog verifyPanel(
    BuildContext context, String itemName, String venueName) {
  return AlertDialog(
    title: Text("$venueName $itemName"),
    contentPadding: EdgeInsets.zero,
    content: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: circularAvatar(uiAvatar: false),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("UPDATED: 31 Mar 22"),
                      Text("Terry Rees"),
                      Text("Plymouth, UK"),
                    ],
                  ),
                ),
              ]),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: circularAvatar(uiAvatar: false),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("Verified: 14 May 22"),
                      Text("Joshua Middlemiss"),
                      Text("Ontario, Canada"),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    ]),
    actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text("Validate"),
      ),
      TextButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, NewVenueScreen.routeName);
        },
        child: const Text("Update"),
      ),
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text("OK"),
      ),
    ],
  );
}
