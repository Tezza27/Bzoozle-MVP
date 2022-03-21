import 'package:flutter/material.dart';

Widget openTimeCard(
    BuildContext context, String weekDay, String openTime, String closeTime) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
    child: Card(
      color: Theme.of(context).splashColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40.0,
            ),
            Expanded(
              flex: 6,
              child: Text(weekDay,
                  style: TextStyle(color: Theme.of(context).primaryColor)),
            ),
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 4,
              child: Text(
                openTime,
                style: TextStyle(color: Theme.of(context).primaryColor),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(flex: 1),
            Text(
              " - ",
              style: TextStyle(color: Theme.of(context).primaryColor),
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 1),
            Expanded(
              flex: 4,
              child: Text(
                closeTime,
                style: TextStyle(color: Theme.of(context).primaryColor),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    ),
  );
}
