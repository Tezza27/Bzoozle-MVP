import 'package:flutter/material.dart';

class TimeSetScreen extends StatefulWidget {
  const TimeSetScreen({Key? key}) : super(key: key);
  static const String routeName = '/timeset';

  @override
  _TimeSetScreenState createState() => _TimeSetScreenState();
}

class _TimeSetScreenState extends State<TimeSetScreen> {
  bool? chBox24Open = false;
  bool? chBox24Closed = false;
  bool? chBoxNoOpen = false;
  bool? chBoxNoClose = false;

  @override
  Widget build(BuildContext context) {
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                            value: chBox24Open,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? chBox24OpenNewVal) {
                              setState(() {
                                chBox24Open = chBox24OpenNewVal;
                              });
                            }),
                        Text("Open all day",
                            style: TextStyle(color: Colors.black))
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                            value: chBox24Closed,
                            checkColor: Colors.black,
                            // checkColor: Theme.of(context).splashColor,
                            // fillColor: Colors.white,
                            onChanged: (bool? chBox24ClosedNewVal) {
                              setState(() {
                                chBox24Closed = chBox24ClosedNewVal;
                              });
                            }),
                        Text("Closed all day",
                            style: TextStyle(color: Colors.black))
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Opening Time",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      //TextField(),
                      Row(
                        children: <Widget>[
                          Checkbox(
                              value: chBoxNoOpen,
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? chBoxNoOpenNewVal) {
                                setState(() {
                                  chBoxNoOpen = chBoxNoOpenNewVal;
                                });
                              }),
                          Text("No Opening Time",
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Closing Time",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      //TextField(),
                      Row(
                        children: <Widget>[
                          Checkbox(
                              value: chBoxNoClose,
                              checkColor: Colors.black,
                              // checkColor: Theme.of(context).splashColor,
                              // fillColor: Colors.white,
                              onChanged: (bool? chBoxNoCloseNewVal) {
                                setState(() {
                                  chBoxNoClose = chBoxNoCloseNewVal;
                                });
                              }),
                          Text("No Closing Time",
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
