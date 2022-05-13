import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget openTimeCard(
    BuildContext context, String weekDay, String openTime, String closeTime) {
  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
    child: Card(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40.0,
            ),
            Expanded(
              flex: 10,
              child: Text(weekDay,
                  style: themeProvider.getTheme.textTheme.headline4),
            ),
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 4,
              child: Text(
                openTime,
                style: themeProvider.getTheme.textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(flex: 1),
            Text(
              " - ",
              style: themeProvider.getTheme.textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 1),
            Expanded(
              flex: 4,
              child: Text(
                closeTime,
                style: themeProvider.getTheme.textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
