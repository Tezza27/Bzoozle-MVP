import 'package:bzoozle/Themes/theme_constants.dart';
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
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: orange1,
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                              'assets/images/portrait_placeholder.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("UPDATED: 31 Mar 22"),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: const <Widget>[
                      //     Text("UPDATED:"),
                      //     Spacer(),
                      //     Text("31 Mar 22"),
                      //   ],
                      // ),
                      Text("Terry Rees"),
                      Text("Plymouth, UK"),

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: const <Widget>[
                      //     Text("Terry Rees"),
                      //     Spacer(),
                      //     Text("Plymouth, UK"),
                      //   ],
                      // ),
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
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: orange1,
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                              'assets/images/portrait_placeholder.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("Verified: 14 May 22"),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: const <Widget>[
                      //     Text("UPDATED:"),
                      //     Spacer(),
                      //     Text("31 Mar 22"),
                      //   ],
                      // ),
                      Text("Joshua Middlemiss"),
                      Text("Ontario, Canada"),

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: const <Widget>[
                      //     Text("Terry Rees"),
                      //     Spacer(),
                      //     Text("Plymouth, UK"),
                      //   ],
                      // ),
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
        onPressed: () => Navigator.pop(context),
        child: const Text("Update"),
      ),
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text("OK"),
      ),
    ],
  );
}
