import 'package:bzoozle/Models/mainMenuButton.dart';
import 'package:flutter/material.dart';

Widget mainMenuButton(
    {required BuildContext context, required MainMenuButton menuButton}) {
  return Container(
    child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, menuButton.buttonRoute);
        },
        child: Text(menuButton.buttonTitle)),
  );
}
