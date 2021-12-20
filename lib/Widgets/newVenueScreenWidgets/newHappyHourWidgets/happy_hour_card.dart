import 'package:bzoozle/Lists/week_days.dart';
import 'package:bzoozle/Models/happy_hour_session.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget happyHourCard(BuildContext context, HappyHourSession happyHour) {
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
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: SizedBox(
          height: 40.0,
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
              const Spacer(
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
              const Spacer(flex: 1),
              Text(
                " - ",
                style: TextStyle(color: Theme.of(context).splashColor),
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: Text(
                  endTimeHH,
                  style: TextStyle(color: Theme.of(context).splashColor),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    ),
  );
}
