import 'package:bzoozle/Providers/setOpeningTimesProvider.dart';
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
    final setOpeningTimesProvider =
        Provider.of<SetOpeningTimesProvider>(context);
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
        color: Colors.orange[800],
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Set the opening and closing times for:",
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Text(
                "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday & Sunday",
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Checkbox(
                              value: setOpeningTimesProvider.chBox24Open,
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? newValue) {
                                setOpeningTimesProvider.change24Open(newValue!);
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
                                  if (setOpeningTimesProvider
                                              .selectedOpenTime !=
                                          "Open" &&
                                      setOpeningTimesProvider
                                              .selectedOpenTime !=
                                          "Closed") {
                                    setOpeningTimesProvider
                                        .changeSelectedOpenTime(await _show(
                                            startTime: setOpeningTimesProvider
                                                .selectedOpenTime));
                                  }
                                },
                                child: Center(
                                    child: Text(
                                  setOpeningTimesProvider.selectedOpenTime,
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
                              value: setOpeningTimesProvider.chBoxNoOpen,
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? newValue) {
                                setOpeningTimesProvider.changeNoOpen(newValue!);
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
                              value: setOpeningTimesProvider.chBox24Closed,
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? newValue) {
                                setOpeningTimesProvider
                                    .change24Closed(newValue!);
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
                                  if (setOpeningTimesProvider
                                              .selectedCloseTime !=
                                          "Open" &&
                                      setOpeningTimesProvider
                                              .selectedCloseTime !=
                                          "Closed") {
                                    setOpeningTimesProvider
                                        .changeSelectedCloseTime(await _show(
                                            startTime: setOpeningTimesProvider
                                                .selectedCloseTime));
                                  }
                                },
                                child: Center(
                                    child: Text(
                                  setOpeningTimesProvider.selectedCloseTime,
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
                              value: setOpeningTimesProvider.chBoxNoClose,
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? newValue) {
                                setOpeningTimesProvider
                                    .changeNoClose(newValue!);
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
                          setOpeningTimesProvider.finishTimeSetting();
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
    TimeOfDay? result = startTime == null
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
