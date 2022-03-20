import 'package:bzoozle/Lists/week_days.dart';
import 'package:bzoozle/Models/happy_hour_session.dart';
import 'package:flutter/material.dart';

Widget hhTimesCard(BuildContext context, HappyHourSession happyHour) {
  // Today's weekday
  DateTime today = DateTime.now();
  //Convert start time string to dateTime
  DateTime startDateTime = DateTime(
      today.year,
      today.month,
      today.day,
      int.parse(happyHour.startTime.split(":")[0]),
      int.parse(happyHour.startTime.split(":")[1]));
  //Convert duration to minutes
  happyHour.duration.toInt();
  //add duration to start time to get finish time
  DateTime endDateTime =
      startDateTime.add(Duration(minutes: happyHour.duration));
  //convert finish time to string
  String endTimeHour = endDateTime.hour.toString().padLeft(2, '0');
  String endTimeMinute = endDateTime.minute.toString().padLeft(2, '0');
  String endTime = endTimeHour + ":" + endTimeMinute;

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
    child: Card(
      color: Theme.of(context).splashColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 60.0,
            ),
            Expanded(
              flex: 6,
              child: Text(weekDays[int.parse(happyHour.day)],
                  style: TextStyle(color: Theme.of(context).primaryColor)),
            ),
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 4,
              child: Text(
                happyHour.startTime,
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
                endTime,
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
