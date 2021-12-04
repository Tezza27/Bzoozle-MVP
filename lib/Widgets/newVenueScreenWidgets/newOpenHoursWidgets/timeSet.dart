import 'package:bzoozle/Providers/venueProvider.dart';
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
    // bool _chBox24Open = setOpeningTimesProvider.chBox24Open;
    // bool _chBox24Closed = setOpeningTimesProvider.chBox24Closed;
    // bool? _chBoxNoOpen = setOpeningTimesProvider.chBoxNoOpen;
    // bool? _chBoxNoClose = setOpeningTimesProvider.chBoxNoClose;
    // String _originalOpenTime = setOpeningTimesProvider.originalOpenTime;
    // String _originalCloseTime = setOpeningTimesProvider.originalCloseTime;
    // String _selectedOpenTime = _originalOpenTime;
    // String _selectedCloseTime = _originalCloseTime;

    // setOpeningTimesProvider.selectedOpenTime = setOpeningTimesProvider.originalOpenTime;
    // setOpeningTimesProvider.selectedCloseTime = setOpeningTimesProvider.originalCloseTime;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Set Opening Time"),
          centerTitle: true),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.orange[800],
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
              //   child: Text(venueProvider.timeSetMessage),
              // ),
              Text(venueProvider.timeSetMessage),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Checkbox(
                              value: venueProvider.chBox24Open,
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? newValue) {
                                venueProvider.change24Open(newValue!);
                              }),
                          Text("Open all day",
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Opening Time",
                            style: TextStyle(color: Colors.black),
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
                                    backgroundColor: MaterialStateProperty.all(
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
                                  style: TextStyle(
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
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? newValue) {
                                venueProvider.changeNoOpen(newValue!);
                              }),
                          Text("No Opening Time",
                              style: TextStyle(color: Colors.black))
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
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? newValue) {
                                venueProvider.change24Closed(newValue!);
                              }),
                          Text("Closed all day",
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Closing Time",
                            style: TextStyle(color: Colors.black),
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
                                    backgroundColor: MaterialStateProperty.all(
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
                                  style: TextStyle(
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
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? newValue) {
                                venueProvider.changeNoClose(newValue!);
                              }),
                          Text("No Closing Time",
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
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
                          venueProvider.finishTimeSetting();
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Finish",
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
