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
      final starting = now.compareTo(startTime) >= 0;
      final ending = now.compareTo(endTime) >= 0;
      //not quite working - instead of closed at it should be opens tomorrow at.
      return Text(
        starting
            ? ending
                ? "Ended at ${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')} today"
                : "It's happy hour now 'til ${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')}"
            : "Happy hour: ${startTime.weekday == now.weekday ? "Today" : weekDays[startTime.weekday - 1]} ${startTime.hour.toString().padLeft(2, '0')}:${startTime.minute.toString().padLeft(2, '0')}-${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')}",
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
      DateTime sessionEndTime =
          DateTime(now.year, now.month, now.day, 0, 0, 0).add(
        Duration(
          days: 0,
          hours: int.parse(happyHourSession.startTime.split(":")[0]),
          minutes: int.parse(happyHourSession.startTime.split(":")[1]) +
              happyHourSession.duration,
        ),
      );

      if (sessionWeekday == now.weekday) {
        if (sessionEndTime.isAfter(now)) {
          dayAdd = 0;
        } else {
          dayAdd = 7;
        }
      } else if (sessionWeekday < now.weekday) {
        if (now.weekday - sessionWeekday > 1) {
          dayAdd = 7 - now.weekday + sessionWeekday;
        } else {
          if (sessionEndTime.day == now.day && now.isBefore(sessionEndTime)) {
            dayAdd = -1;
          } else {
            dayAdd = 6;
          }
        }
      } else {
        dayAdd = sessionWeekday - now.weekday;
      }
      happyHourDatesList.add(HHSessionDateTimes(
          startDateTime: DateTime(now.year, now.month, now.day, 0, 0, 0).add(
            Duration(
              days: dayAdd,
              hours: int.parse(happyHourSession.startTime.split(":")[0]),
              minutes: int.parse(happyHourSession.startTime.split(":")[1]),
            ),
          ),
          endDateTime: DateTime(now.year, now.month, now.day, 0, 0, 0).add(
            Duration(
              days: dayAdd,
              hours: int.parse(happyHourSession.startTime.split(":")[0]),
              minutes: int.parse(happyHourSession.startTime.split(":")[1]) +
                  happyHourSession.duration,
            ),
          )));
    }
    happyHourDatesList.sort((a, b) => a.endDateTime!.compareTo(b.endDateTime!));

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
