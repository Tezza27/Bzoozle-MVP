import 'package:bzoozle/Providers/venueProvider.dart';
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Add Happy Hour Sessions"),
          centerTitle: true),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.orange[800],
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Text(
                      "Set the start and end times for the happy hour sessions")),
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
                          style: TextStyle(color: Colors.black),
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
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "End Time",
                          style: TextStyle(color: Colors.black),
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
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                          value: venueProvider.chBoxHHMonday,
                          checkColor: Colors.black,
                          // checkColor: Theme.of(context).splashColor,
                          // fillColor: Colors.white,
                          onChanged: (bool? newValue) {
                            venueProvider.changeHHMonday(newValue!);
                          }),
                      Text("Monday", style: TextStyle(color: Colors.black))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                          value: venueProvider.chBoxHHTuesday,
                          checkColor: Colors.black,
                          // checkColor: Theme.of(context).splashColor,
                          // fillColor: Colors.white,
                          onChanged: (bool? newValue) {
                            venueProvider.changeHHTuesday(newValue!);
                          }),
                      Text("Tuesday", style: TextStyle(color: Colors.black))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                          value: venueProvider.chBoxHHWednesday,
                          checkColor: Colors.black,
                          // checkColor: Theme.of(context).splashColor,
                          // fillColor: Colors.white,
                          onChanged: (bool? newValue) {
                            venueProvider.changeHHWednesday(newValue!);
                          }),
                      Text("Wednesday", style: TextStyle(color: Colors.black))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                          value: venueProvider.chBoxHHThursday,
                          checkColor: Colors.black,
                          // checkColor: Theme.of(context).splashColor,
                          // fillColor: Colors.white,
                          onChanged: (bool? newValue) {
                            venueProvider.changeHHThursday(newValue!);
                          }),
                      Text("Thursday", style: TextStyle(color: Colors.black))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                          value: venueProvider.chBoxHHFriday,
                          checkColor: Colors.black,
                          // checkColor: Theme.of(context).splashColor,
                          // fillColor: Colors.white,
                          onChanged: (bool? newValue) {
                            venueProvider.changeHHFriday(newValue!);
                          }),
                      Text("Friday", style: TextStyle(color: Colors.black))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                          value: venueProvider.chBoxHHSaturday,
                          checkColor: Colors.black,
                          // checkColor: Theme.of(context).splashColor,
                          // fillColor: Colors.white,
                          onChanged: (bool? newValue) {
                            venueProvider.changeHHSaturday(newValue!);
                          }),
                      Text("Saturday", style: TextStyle(color: Colors.black))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                          value: venueProvider.chBoxHHSunday,
                          checkColor: Colors.black,
                          // checkColor: Theme.of(context).splashColor,
                          // fillColor: Colors.white,
                          onChanged: (bool? newValue) {
                            venueProvider.changeHHSunday(newValue!);
                          }),
                      Text("Sunday", style: TextStyle(color: Colors.black))
                    ],
                  ),
                ],
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
                          style: TextStyle(color: Colors.orange),
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
                          venueProvider.saveHHSession();
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Save Sessions",
                          style: TextStyle(color: Colors.orange),
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
