import 'package:bzoozle/Lists/week_days.dart';
import 'package:bzoozle/Models/happy_hour_session.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

Widget happyHourCard(BuildContext context, HappyHourSession happyHour) {
  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
  final venueProvider = Provider.of<VenueProvider>(context);
  DateTime now = DateTime.now();
  DateTime _startTime = DateTime(
      now.year,
      now.month,
      now.day,
      int.parse(happyHour.startTime.split(":")[0]),
      int.parse(happyHour.startTime.split(":")[1]));
  DateTime _endTime = _startTime.add(Duration(minutes: happyHour.duration));
  String startTimeHH = DateFormat('HH:mm').format(_startTime);
  String endTimeHH = DateFormat('HH:mm').format(_endTime);
  String dayHH = weekDays[int.parse(happyHour.day)];
  return Padding(
    padding:
        const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 8.0, right: 8.0),
    child: Card(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 2.0),
        child: SizedBox(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Text(
                  dayHH,
                  style: themeProvider.getTheme.textTheme.headline4,
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 4,
                child: Text(
                  startTimeHH,
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
                  endTimeHH,
                  style: themeProvider.getTheme.textTheme.headline4,
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                iconSize: 24,
                color: themeProvider.getTheme.splashColor,
                tooltip: 'Delete this session',
                onPressed: () {
                  int? myIndex = venueProvider.happyHours?.indexWhere(
                      (happyHourSession) => happyHourSession == happyHour);
                  venueProvider.deleteHHSession(venueProvider.happyHours
                      ?.indexWhere(
                          (happyHourSession) => happyHourSession == happyHour));
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
