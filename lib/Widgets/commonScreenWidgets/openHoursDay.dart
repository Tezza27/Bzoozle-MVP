import 'package:flutter/material.dart';

class OpenHoursDay extends StatelessWidget {
  const OpenHoursDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Container(
                child: Text("MONDAY"),
              )),
          Expanded(
              flex: 3,
              child: Container(
                child: Text("10:00"),
              )),
          Expanded(
              flex: 1,
              child: Container(
                child: Text(" - "),
              )),
          Expanded(
              flex: 3,
              child: Container(
                child: Text("02:00"),
              )),
        ],
      ),
    );
  }
}
