import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget detailScrollButton({int index = 0, String buttonText = "Error"}) {
  return ConstrainedBox(
    constraints: BoxConstraints.tightFor(width: 120, height: 20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.orange[800],
        side: BorderSide(width: 1, color: Colors.black),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: Text(
        "$buttonText",
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    ),
  );
}
