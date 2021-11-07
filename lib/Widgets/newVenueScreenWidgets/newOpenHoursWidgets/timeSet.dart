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
              Text("Set the opening and closing times for:",
                  style: TextStyle(color: Colors.black)),
              Text(
                  "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday & Sunday",
                  style: TextStyle(color: Colors.black)),
              Row(
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
                              chBox24Open = chBox24ClosedNewVal;
                            });
                          }),
                      Text("Closed all day",
                          style: TextStyle(color: Colors.black))
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
