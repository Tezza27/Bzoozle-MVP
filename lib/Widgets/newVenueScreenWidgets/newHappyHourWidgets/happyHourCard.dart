import 'package:bzoozle/Lists/week_days.dart';
import 'package:bzoozle/Models/happyHourSession.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget happyHourCard(BuildContext context, HappyHourSession happyHour) {
  DateTime now = DateTime.now();
  DateTime _startTime = DateTime(
      now.year,
      now.month,
      now.day,
      int.parse(happyHour.startTime.substring(0, 2)),
      int.parse(happyHour.startTime.substring(3, 2)));
  DateTime _endTime = _startTime.add(Duration(minutes: happyHour.duration));
  String startTimeHH = DateFormat('kk:mm').format(_startTime);
  String endTimeHH = DateFormat('kk:mm').format(_endTime);
  String dayHH = weekDays[int.parse(happyHour.day)];
  return Padding(
    padding:
        const EdgeInsets.only(top: 16.0, bottom: 2.0, left: 8.0, right: 8.0),
    child: Card(
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Text(
              dayHH,
              style: TextStyle(color: Theme.of(context).splashColor),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 4,
            child: Text(
              startTimeHH,
              style: TextStyle(color: Theme.of(context).splashColor),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(flex: 1),
          Text(
            " - ",
            style: TextStyle(color: Theme.of(context).splashColor),
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 1),
          Expanded(
            flex: 4,
            child: Text(
              endTimeHH,
              style: TextStyle(color: Theme.of(context).splashColor),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    ),
  );
}
