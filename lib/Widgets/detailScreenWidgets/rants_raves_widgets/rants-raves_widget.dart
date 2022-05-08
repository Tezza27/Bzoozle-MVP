import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RantsRavesCard extends StatelessWidget {
  const RantsRavesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Card(
      color: themeProvider.getTheme.cardColor,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "First name",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                  Text(
                    "Surname",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Title",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                  Text(
                    "Category",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Date",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                  Text(
                    "Time",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
              height: 80.0,
              child: Text(
                "Content Here",
                style: themeProvider.getTheme.textTheme.bodyText2,
              )),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "#",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                  Image.asset(
                    'assets/images/cross_double.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "#",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                  Image.asset(
                    'assets/images/cross_single.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "#",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                  Image.asset(
                    'assets/images/tick_single.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "#",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                  Image.asset(
                    'assets/images/tick_double.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "#",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                  Image.asset(
                    'assets/images/cross_double.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "#",
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                  Image.asset(
                    'assets/images/cross_double.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
