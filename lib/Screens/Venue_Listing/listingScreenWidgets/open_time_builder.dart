import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:flutter/material.dart';

class OpenTimeStatus extends StatefulWidget {
  final Venue venue;

  const OpenTimeStatus({Key? key, required this.venue}) : super(key: key);

  @override
  State<OpenTimeStatus> createState() => _OpenTimeStatusState();
}

class _OpenTimeStatusState extends State<OpenTimeStatus> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    DateTime startTime = getStartEndTimes(widget.venue, true);
    DateTime endTime = getStartEndTimes(widget.venue, false);

    return TimerBuilder.scheduled([startTime, endTime], builder: (context) {
      final now = DateTime.now();
      final starting = now.compareTo(startTime) >= 0;
      final ending = now.compareTo(endTime) >= 0;
      //not quite working - instead of closed at it should be opens tomorrow at.
      return Text(
        starting
            ? ending
                ? "Closed at ${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')} today"
                : "Open now 'til ${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')}"
            : "Open today: ${startTime.hour.toString().padLeft(2, '0')}:${startTime.minute.toString().padLeft(2, '0')}-${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')}",
        style: themeProvider.getTheme.textTheme.bodyText1,
      );
    });
  }

  DateTime getStartEndTimes(Venue venue, bool startFlag) {
    DateTime now = DateTime.now();
    DateTime returnDate;
    switch (now.weekday) {
      case 1:
        DateTime? openYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.openTime6!.split(":")[0]),
                minutes: int.parse(venue.openTime6!.split(":")[1])));
        DateTime? closeYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.closeTime6!.split(":")[0]),
                minutes: int.parse(venue.closeTime6!.split(":")[1])));
        if (closeYesterday.isBefore(openYesterday)) {
          closeYesterday = closeYesterday.add(const Duration(days: 1));
        }
        DateTime? openToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.openTime0!.split(":")[0]),
                minutes: int.parse(venue.openTime0!.split(":")[1])));
        DateTime? closeToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.closeTime0!.split(":")[0]),
                minutes: int.parse(venue.closeTime0!.split(":")[1])));
        if (closeToday.isBefore(openToday)) {
          closeToday = closeToday.add(const Duration(days: 1));
        }
        if (closeYesterday.isAfter(now)) {
          returnDate = startFlag ? openYesterday : closeYesterday;
        } else {
          returnDate = startFlag ? openToday : closeToday;
        }

        break;
      case 2:
        DateTime? openYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.openTime0!.split(":")[0]),
                minutes: int.parse(venue.openTime0!.split(":")[1])));
        DateTime? closeYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.closeTime0!.split(":")[0]),
                minutes: int.parse(venue.closeTime0!.split(":")[1])));
        if (closeYesterday.isBefore(openYesterday)) {
          closeYesterday = closeYesterday.add(const Duration(days: 1));
        }
        DateTime? openToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.openTime1!.split(":")[0]),
                minutes: int.parse(venue.openTime1!.split(":")[1])));
        DateTime? closeToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.closeTime1!.split(":")[0]),
                minutes: int.parse(venue.closeTime1!.split(":")[1])));
        if (closeToday.isBefore(openToday)) {
          closeToday = closeToday.add(const Duration(days: 1));
        }
        if (closeYesterday.isAfter(now)) {
          returnDate = startFlag ? openYesterday : closeYesterday;
        } else {
          returnDate = startFlag ? openToday : closeToday;
        }
        break;
      case 3:
        DateTime? openYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.openTime1!.split(":")[0]),
                minutes: int.parse(venue.openTime1!.split(":")[1])));
        DateTime? closeYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.closeTime1!.split(":")[0]),
                minutes: int.parse(venue.closeTime1!.split(":")[1])));
        if (closeYesterday.isBefore(openYesterday)) {
          closeYesterday = closeYesterday.add(const Duration(days: 1));
        }
        DateTime? openToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.openTime2!.split(":")[0]),
                minutes: int.parse(venue.openTime2!.split(":")[1])));
        DateTime? closeToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.closeTime2!.split(":")[0]),
                minutes: int.parse(venue.closeTime2!.split(":")[1])));
        if (closeToday.isBefore(openToday)) {
          closeToday = closeToday.add(const Duration(days: 1));
        }
        if (closeYesterday.isAfter(now)) {
          returnDate = startFlag ? openYesterday : closeYesterday;
        } else {
          returnDate = startFlag ? openToday : closeToday;
        }
        break;
      case 4:
        DateTime? openYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.openTime2!.split(":")[0]),
                minutes: int.parse(venue.openTime2!.split(":")[1])));
        DateTime? closeYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.closeTime2!.split(":")[0]),
                minutes: int.parse(venue.closeTime2!.split(":")[1])));
        if (closeYesterday.isBefore(openYesterday)) {
          closeYesterday = closeYesterday.add(const Duration(days: 1));
        }
        DateTime? openToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.openTime3!.split(":")[0]),
                minutes: int.parse(venue.openTime3!.split(":")[1])));
        DateTime? closeToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.closeTime3!.split(":")[0]),
                minutes: int.parse(venue.closeTime3!.split(":")[1])));
        if (closeToday.isBefore(openToday)) {
          closeToday = closeToday.add(const Duration(days: 1));
        }
        if (closeYesterday.isAfter(now)) {
          returnDate = startFlag ? openYesterday : closeYesterday;
        } else {
          returnDate = startFlag ? openToday : closeToday;
        }
        break;
      case 5:
        DateTime? openYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.openTime3!.split(":")[0]),
                minutes: int.parse(venue.openTime3!.split(":")[1])));
        DateTime? closeYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.closeTime3!.split(":")[0]),
                minutes: int.parse(venue.closeTime3!.split(":")[1])));
        if (closeYesterday.isBefore(openYesterday)) {
          closeYesterday = closeYesterday.add(const Duration(days: 1));
        }
        DateTime? openToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.openTime4!.split(":")[0]),
                minutes: int.parse(venue.openTime4!.split(":")[1])));
        DateTime? closeToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.closeTime4!.split(":")[0]),
                minutes: int.parse(venue.closeTime4!.split(":")[1])));
        if (closeToday.isBefore(openToday)) {
          closeToday = closeToday.add(const Duration(days: 1));
        }
        if (closeYesterday.isAfter(now)) {
          returnDate = startFlag ? openYesterday : closeYesterday;
        } else {
          returnDate = startFlag ? openToday : closeToday;
        }
        break;
      case 6:
        DateTime? openYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.openTime4!.split(":")[0]),
                minutes: int.parse(venue.openTime4!.split(":")[1])));
        DateTime? closeYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.closeTime4!.split(":")[0]),
                minutes: int.parse(venue.closeTime4!.split(":")[1])));
        if (closeYesterday.isBefore(openYesterday)) {
          closeYesterday = closeYesterday.add(const Duration(days: 1));
        }
        DateTime? openToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.openTime5!.split(":")[0]),
                minutes: int.parse(venue.openTime5!.split(":")[1])));
        DateTime? closeToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.closeTime5!.split(":")[0]),
                minutes: int.parse(venue.closeTime5!.split(":")[1])));
        if (closeToday.isBefore(openToday)) {
          closeToday = closeToday.add(const Duration(days: 1));
        }
        if (closeYesterday.isAfter(now)) {
          returnDate = startFlag ? openYesterday : closeYesterday;
        } else {
          returnDate = startFlag ? openToday : closeToday;
        }
        break;
      default:
        DateTime? openYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.openTime5!.split(":")[0]),
                minutes: int.parse(venue.openTime5!.split(":")[1])));
        DateTime? closeYesterday =
            DateTime(now.year, now.month, now.day, 0, 0, 0).add(Duration(
                days: -1,
                hours: int.parse(venue.closeTime5!.split(":")[0]),
                minutes: int.parse(venue.closeTime5!.split(":")[1])));
        if (closeYesterday.isBefore(openYesterday)) {
          closeYesterday = closeYesterday.add(const Duration(days: 1));
        }
        DateTime? openToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.openTime6!.split(":")[0]),
                minutes: int.parse(venue.openTime6!.split(":")[1])));
        DateTime? closeToday = DateTime(now.year, now.month, now.day, 0, 0, 0)
            .add(Duration(
                hours: int.parse(venue.closeTime6!.split(":")[0]),
                minutes: int.parse(venue.closeTime6!.split(":")[1])));
        if (closeToday.isBefore(openToday)) {
          closeToday = closeToday.add(const Duration(days: 1));
        }
        if (closeYesterday.isAfter(now)) {
          returnDate = startFlag ? openYesterday : closeYesterday;
        } else {
          returnDate = startFlag ? openToday : closeToday;
        }
        break;
    }

    return returnDate;
  }
}
