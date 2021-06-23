import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget detailScrollButton({int index = 0, String buttonText = "Error"}) {
  return ConstrainedBox(
    constraints: BoxConstraints.tightFor(width: 120, height: 20),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.orange),
      ),
      child: Text(
        "$buttonText",
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    ),
  );
}
