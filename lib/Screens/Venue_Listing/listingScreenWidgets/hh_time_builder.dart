import 'package:bzoozle/Lists/week_days.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_builder/timer_builder.dart';

import 'package:bzoozle/Models/happy_hour_session.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Themes/theme_provider.dart';

class HHTimeStatus extends StatefulWidget {
  final Venue venue;

  const HHTimeStatus({Key? key, required this.venue}) : super(key: key);

  @override
  State<HHTimeStatus> createState() => _HHTimeStatusState();
}

class _HHTimeStatusState extends State<HHTimeStatus> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    DateTime? startTime = getStartEndTimes(widget.venue, true);
    DateTime? endTime = getStartEndTimes(widget.venue, false);

    return TimerBuilder.scheduled([startTime!, endTime!], builder: (context) {
      final now = DateTime.now();
      final starting = now.isBefore(startTime);
      final ending = now.isBefore(endTime);
      final String hHMessage;

      if (ending) {
        if (starting) {
          hHMessage =
              "Happy hour: ${startTime.weekday == now.weekday ? "Today" : weekDays[startTime.weekday - 1].substring(0, 3)} ${startTime.hour.toString().padLeft(2, '0')}:${startTime.minute.toString().padLeft(2, '0')}-${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')}";
        } else {
          hHMessage =
              "It's happy hour now 'til ${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')}";
        }
      } else {
        hHMessage = "ERROR";
      }
      return Text(
        hHMessage,
        style: themeProvider.getTheme.textTheme.bodyText1,
      );
    });
  }

  DateTime? getStartEndTimes(Venue venue, bool startFlag) {
    List<HappyHourSession>? happyHourList = venue.happyHours;
    List<HHSessionDateTimes> happyHourDatesList = [];
    DateTime now = DateTime.now();
    for (HappyHourSession happyHourSession in happyHourList!) {
      int dayAdd = 0;
      int sessionWeekday = int.parse(happyHourSession.day);

      DateTime sessionStartTime =
          DateTime(now.year, now.month, now.day, 0, 0, 0).add(
        Duration(
          days: 0,
          hours: int.parse(happyHourSession.startTime.split(":")[0]),
          minutes: int.parse(happyHourSession.startTime.split(":")[1]),
        ),
      );
      DateTime sessionEndTime = sessionStartTime.add(
        Duration(minutes: happyHourSession.duration),
      );

      if (sessionWeekday > now.weekday) {
        dayAdd = sessionWeekday - now.weekday;
      } else if (sessionWeekday == now.weekday) {
        if (sessionEndTime.isBefore(now)) {
          dayAdd = 7;
        } else {
          dayAdd = 0;
        }
      } else {
        if (now.weekday - sessionWeekday > 1) {
          dayAdd = 7 - now.weekday + sessionWeekday;
        } else {
          if (sessionStartTime.day != sessionEndTime.day &&
              now.isBefore(sessionEndTime.add(const Duration(days: -1)))) {
            dayAdd = 0;
          } else {
            dayAdd = 6;
          }
        }
      }

      sessionStartTime = sessionStartTime.add(Duration(days: dayAdd));
      sessionEndTime =
          sessionStartTime.add(Duration(minutes: happyHourSession.duration));

      happyHourDatesList.add(
        HHSessionDateTimes(
            startDateTime: sessionStartTime, endDateTime: sessionEndTime),
      );
    }
    happyHourDatesList.sort((a, b) => a.endDateTime!.compareTo(b.endDateTime!));
    for (int i = 0; i <= happyHourDatesList.length - 1; i++) {
      print("Happy Hour Session " +
          i.toString() +
          ": " +
          happyHourDatesList[i].startDateTime.toString() +
          '-' +
          happyHourDatesList[i].endDateTime.toString());
    }
    //

    return startFlag
        ? happyHourDatesList[0].startDateTime
        : happyHourDatesList[0].endDateTime;
  }
}

class HHSessionDateTimes {
  DateTime? startDateTime;
  DateTime? endDateTime;
  HHSessionDateTimes({
    this.startDateTime,
    this.endDateTime,
  });
}
