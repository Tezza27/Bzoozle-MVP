import 'package:flutter/material.dart';

class OpenHoursDay extends StatefulWidget {
  const OpenHoursDay({Key? key}) : super(key: key);

  @override
  State<OpenHoursDay> createState() => _OpenHoursDayState();
}

class _OpenHoursDayState extends State<OpenHoursDay> {
  @override
  Widget build(BuildContext context) {
    bool? chBox1 = false;
    return Card(
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Checkbox(
              value: chBox1,
              activeColor: Theme.of(context).colorScheme.secondary,
              onChanged: (bool? chBox1NewVal) {
                setState(() {
                  chBox1 = chBox1NewVal;
                });
              }),
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
