import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddHHSessionScreen extends StatefulWidget {
  const AddHHSessionScreen({Key? key}) : super(key: key);
  static const String routeName = '/addhappyhours';

  @override
  _AddHHSessionScreenState createState() => _AddHHSessionScreenState();
}

class _AddHHSessionScreenState extends State<AddHHSessionScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: themeProvider.getTheme.primaryColor,
          title: Text("Add Happy Hour Sessions",
              style: themeProvider.getTheme.textTheme.headline4),
          centerTitle: true),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Text(
                "Set the start and end times for the happy hour sessions",
                style: themeProvider.getTheme.textTheme.bodyText1,
              )),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Start Time",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 0.0),
                          child: SizedBox(
                            height: 40.0,
                            width: 140.0,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              onPressed: () async {
                                venueProvider.changeSelectedOpenTime(
                                    await _show(
                                        startTime:
                                            venueProvider.selectedOpenTime));
                              },
                              child: Center(
                                  child: Text(
                                venueProvider.selectedOpenTime,
                                style:
                                    themeProvider.getTheme.textTheme.headline4,
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "End Time",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 0.0),
                          child: SizedBox(
                            height: 40.0,
                            width: 140.0,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              onPressed: () async {
                                venueProvider.changeSelectedCloseTime(
                                    await _show(
                                        startTime:
                                            venueProvider.selectedCloseTime));
                              },
                              child: Center(
                                  child: Text(
                                venueProvider.selectedCloseTime,
                                style:
                                    themeProvider.getTheme.textTheme.headline4,
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: venueProvider.chBoxHHMonday,
                            checkColor: themeProvider.getTheme.primaryColor,
                            activeColor: themeProvider.getTheme.splashColor,
                            onChanged: (bool? newValue) {
                              venueProvider.changeHHMonday(newValue!);
                            }),
                        Text(
                          "Monday",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: venueProvider.chBoxHHTuesday,
                            checkColor: themeProvider.getTheme.primaryColor,
                            activeColor: themeProvider.getTheme.splashColor,
                            onChanged: (bool? newValue) {
                              venueProvider.changeHHTuesday(newValue!);
                            }),
                        Text(
                          "Tuesday",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: venueProvider.chBoxHHWednesday,
                            checkColor: themeProvider.getTheme.primaryColor,
                            activeColor: themeProvider.getTheme.splashColor,
                            onChanged: (bool? newValue) {
                              venueProvider.changeHHWednesday(newValue!);
                            }),
                        Text(
                          "Wednesday",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: venueProvider.chBoxHHThursday,
                            checkColor: themeProvider.getTheme.primaryColor,
                            activeColor: themeProvider.getTheme.splashColor,
                            onChanged: (bool? newValue) {
                              venueProvider.changeHHThursday(newValue!);
                            }),
                        Text(
                          "Thursday",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: venueProvider.chBoxHHFriday,
                            checkColor: themeProvider.getTheme.primaryColor,
                            activeColor: themeProvider.getTheme.splashColor,
                            onChanged: (bool? newValue) {
                              venueProvider.changeHHFriday(newValue!);
                            }),
                        Text(
                          "Friday",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: venueProvider.chBoxHHSaturday,
                            checkColor: themeProvider.getTheme.primaryColor,
                            activeColor: themeProvider.getTheme.splashColor,
                            onChanged: (bool? newValue) {
                              venueProvider.changeHHSaturday(newValue!);
                            }),
                        Text(
                          "Saturday",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: venueProvider.chBoxHHSunday,
                            checkColor: themeProvider.getTheme.primaryColor,
                            activeColor: themeProvider.getTheme.splashColor,
                            onChanged: (bool? newValue) {
                              venueProvider.changeHHSunday(newValue!);
                            }),
                        Text(
                          "Sunday",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 40.0,
                      width: 140.0,
                      child: ElevatedButton(
                        onPressed: () {
                          venueProvider.changeHHMonday(false);
                          venueProvider.changeHHTuesday(false);
                          venueProvider.changeHHWednesday(false);
                          venueProvider.changeHHThursday(false);
                          venueProvider.changeHHFriday(false);
                          venueProvider.changeHHSaturday(false);
                          venueProvider.changeHHSunday(false);
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          padding: const EdgeInsets.all(8.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                      width: 140.0,
                      child: ElevatedButton(
                        onPressed: () {
                          venueProvider.saveHHSession();
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Save Sessions",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          padding: const EdgeInsets.all(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _show({String? startTime}) async {
    TimeOfDay? result = startTime == null || startTime == "?"
        ? TimeOfDay.now()
        : TimeOfDay(
            hour: int.parse(startTime.split(":")[0]),
            minute: int.parse(startTime.split(":")[1]));
    result = await showTimePicker(context: context, initialTime: result);
    if (result != null) {
      return result.format(context);
    } else {
      return "00:00";
    }
  }
}
