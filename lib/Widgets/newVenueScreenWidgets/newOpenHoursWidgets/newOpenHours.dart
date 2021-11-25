import 'package:bzoozle/Providers/setOpeningTimesProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewOpenHours extends StatefulWidget {
  const NewOpenHours({Key? key}) : super(key: key);

  @override
  _NewOpenHoursState createState() => _NewOpenHoursState();
}

class _NewOpenHoursState extends State<NewOpenHours> {
  @override
  Widget build(BuildContext context) {
    final setOpeningTimesProvider =
        Provider.of<SetOpeningTimesProvider>(context);
    return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, bottom: 2.0, left: 8.0, right: 8.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                        width: 40.0,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Checkbox(
                              value: setOpeningTimesProvider.chBoxMonday,
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? newValue) {
                                setOpeningTimesProvider.changeMonday(newValue!);
                              }),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "MONDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.mondayOpenTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.mondayCloseTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                        width: 40.0,
                        child: Checkbox(
                            value: setOpeningTimesProvider.chBoxTuesday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? newValue) {
                              setOpeningTimesProvider.changeTuesday(newValue!);
                            }),
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "TUESDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.tuesdayOpenTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.tuesdayCloseTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                        width: 40.0,
                        child: Checkbox(
                            value: setOpeningTimesProvider.chBoxWednesday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? newValue) {
                              setOpeningTimesProvider
                                  .changeWednesday(newValue!);
                            }),
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "WEDNESDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.wednesdayOpenTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.wednesdayCloseTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                        width: 40.0,
                        child: Checkbox(
                            value: setOpeningTimesProvider.chBoxThursday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? newValue) {
                              setOpeningTimesProvider.changeThursday(newValue!);
                            }),
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "THURSDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.thursdayOpenTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.thursdayCloseTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                        width: 40.0,
                        child: Checkbox(
                            value: setOpeningTimesProvider.chBoxFriday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? newValue) {
                              setOpeningTimesProvider.changeFriday(newValue!);
                            }),
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "FRIDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.fridayOpenTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.fridayCloseTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                        width: 40.0,
                        child: Checkbox(
                            value: setOpeningTimesProvider.chBoxSaturday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? newValue) {
                              setOpeningTimesProvider.changeSaturday(newValue!);
                            }),
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "SATURDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.saturdayOpenTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.saturdayCloseTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                        width: 40.0,
                        child: Checkbox(
                            value: setOpeningTimesProvider.chBoxSunday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? newValue) {
                              setOpeningTimesProvider.changeSunday(newValue!);
                            }),
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "SUNDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.sundayOpenTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          setOpeningTimesProvider.sundayCloseTime,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Center(
                  child: SizedBox(
                    height: 40.0,
                    width: 100.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/timeset');
                      },
                      child: Text(
                        "Set Times",
                        style: TextStyle(color: Colors.orange),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        padding: const EdgeInsets.all(8.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
