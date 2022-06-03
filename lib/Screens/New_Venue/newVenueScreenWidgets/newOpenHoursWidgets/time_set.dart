import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TimeSetScreen extends StatefulWidget {
  const TimeSetScreen({Key? key}) : super(key: key);
  static const String routeName = '/timeset';

  @override
  _TimeSetScreenState createState() => _TimeSetScreenState();
}

class _TimeSetScreenState extends State<TimeSetScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: themeProvider.getTheme.primaryColor,
      appBar: AppBar(
          backgroundColor: themeProvider.getTheme.primaryColor,
          title: Text("Set Opening Time",
              style: themeProvider.getTheme.textTheme.headline4),
          centerTitle: true),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(venueProvider.timeSetMessage,
                  style: themeProvider.getTheme.textTheme.bodyText1),
              Padding(
                padding:
                    const EdgeInsets.only(top: 32.0, left: 0.0, right: 0.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                                value: venueProvider.chBox24Open,
                                checkColor: themeProvider.getTheme.primaryColor,
                                activeColor: themeProvider.getTheme.splashColor,
                                // checkColor: Theme.of(context).splashColor,
                                // fillColor: Colors.white,
                                onChanged: (bool? newValue) {
                                  venueProvider.change24Open(newValue!);
                                }),
                            Text("Open all day",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1)
                          ],
                        ),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Opening Time",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 16.0, bottom: 0.0),
                              child: SizedBox(
                                height: 40.0,
                                width: 140.0,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: () async {
                                    if (venueProvider.selectedOpenTime !=
                                            "Open" &&
                                        venueProvider.selectedOpenTime !=
                                            "Closed") {
                                      venueProvider.changeSelectedOpenTime(
                                          await _show(
                                              startTime: venueProvider
                                                  .selectedOpenTime));
                                    }
                                  },
                                  child: Center(
                                      child: Text(
                                    venueProvider.selectedOpenTime,
                                    style: const TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                                value: venueProvider.chBoxNoOpen,
                                checkColor: themeProvider.getTheme.primaryColor,
                                activeColor: themeProvider.getTheme.splashColor,
                                onChanged: (bool? newValue) {
                                  venueProvider.changeNoOpen(newValue!);
                                }),
                            Text("No Opening Time",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1)
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                                value: venueProvider.chBox24Closed,
                                checkColor: themeProvider.getTheme.primaryColor,
                                activeColor: themeProvider.getTheme.splashColor,
                                onChanged: (bool? newValue) {
                                  venueProvider.change24Closed(newValue!);
                                }),
                            Text("Closed all day",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1)
                          ],
                        ),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Closing Time",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 16.0, bottom: 0.0),
                              child: SizedBox(
                                height: 40.0,
                                width: 140.0,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: () async {
                                    if (venueProvider.selectedCloseTime !=
                                            "Open" &&
                                        venueProvider.selectedCloseTime !=
                                            "Closed") {
                                      venueProvider.changeSelectedCloseTime(
                                          await _show(
                                              startTime: venueProvider
                                                  .selectedCloseTime));
                                    }
                                  },
                                  child: Center(
                                      child: Text(
                                    venueProvider.selectedCloseTime,
                                    //setOpeningTimesProvider.selectedCloseTime!,
                                    style: const TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                                value: venueProvider.chBoxNoClose,
                                checkColor: themeProvider.getTheme.primaryColor,
                                activeColor: themeProvider.getTheme.splashColor,
                                onChanged: (bool? newValue) {
                                  venueProvider.changeNoClose(newValue!);
                                }),
                            Text("No Closing Time",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1)
                          ],
                        ),
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
                      width: 100.0,
                      child: ElevatedButton(
                        onPressed: () {
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
                      width: 100.0,
                      child: ElevatedButton(
                        onPressed: () {
                          venueProvider.finishTimeSetting();
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Finish",
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
    result = await showTimePicker(
        context: context,
        initialTime: result,
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: orange1,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ),
            child: child!,
          );
        });
    if (result != null) {
      return result.format(context);
    } else {
      return "00:00";
    }
  }
}
