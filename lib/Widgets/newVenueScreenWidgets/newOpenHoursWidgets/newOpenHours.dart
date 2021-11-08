import 'package:flutter/material.dart';

class NewOpenHours extends StatefulWidget {
  const NewOpenHours({Key? key}) : super(key: key);

  @override
  _NewOpenHoursState createState() => _NewOpenHoursState();
}

class _NewOpenHoursState extends State<NewOpenHours> {
  bool? chBoxMonday = false;
  bool? chBoxTuesday = false;
  bool? chBoxWednesday = false;
  bool? chBoxThursday = false;
  bool? chBoxFriday = false;
  bool? chBoxSaturday = false;
  bool? chBoxSunday = false;
  @override
  Widget build(BuildContext context) {
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
                              value: chBoxMonday,
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? chBoxMondayNewVal) {
                                setState(() {
                                  chBoxMonday = chBoxMondayNewVal;
                                });
                              }),
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Text(
                              "MONDAY",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "10:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              " - ",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "02:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
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
                            value: chBoxTuesday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? chBoxTuesdayNewVal) {
                              setState(() {
                                chBoxTuesday = chBoxTuesdayNewVal;
                              });
                            }),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Text(
                              "TUESDAY",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "10:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              " - ",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "02:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
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
                            value: chBoxWednesday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? chBoxWednesdayNewVal) {
                              setState(() {
                                chBoxWednesday = chBoxWednesdayNewVal;
                              });
                            }),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Text(
                              "WEDNESDAY",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "10:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              " - ",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "02:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
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
                            value: chBoxThursday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? chBoxThursdayNewVal) {
                              setState(() {
                                chBoxThursday = chBoxThursdayNewVal;
                              });
                            }),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Text(
                              "THURSDAY",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "10:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              " - ",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "02:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
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
                            value: chBoxFriday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? chBoxFridayNewVal) {
                              setState(() {
                                chBoxFriday = chBoxFridayNewVal;
                              });
                            }),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Text(
                              "FRIDAY",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "10:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              " - ",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "02:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
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
                            value: chBoxSaturday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? chBoxSaturdayNewVal) {
                              setState(() {
                                chBoxSaturday = chBoxSaturdayNewVal;
                              });
                            }),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Text(
                              "SATURDAY",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "10:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              " - ",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "02:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
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
                            value: chBoxSunday,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? chBoxSundayNewVal) {
                              setState(() {
                                chBoxSunday = chBoxSundayNewVal;
                              });
                            }),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Text(
                              "SUNDAY",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "10:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              " - ",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "02:00",
                              style: TextStyle(
                                  color: Theme.of(context).splashColor),
                            ),
                          )),
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
