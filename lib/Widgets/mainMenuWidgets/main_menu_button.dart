import 'package:bzoozle/Models/main_menu_button.dart';
import 'package:flutter/material.dart';

Widget mainMenuButton(
    {required BuildContext context, required MainMenuButton menuButton}) {
  return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, menuButton.buttonRoute);
      },
      child: Text(menuButton.buttonTitle));
}
