import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/verify_panel.dart';
import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:flutter/material.dart';

Widget circularAvatarInk(
    {required BuildContext context,
    required String titleText,
    required String venueName}) {
  return InkWell(
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return verifyPanel(context, titleText, venueName);
        },
      );
    },
    splashColor: orange1,
    child: circularAvatar(uiAvatar: true),
  );
}

CircleAvatar circularAvatar({bool uiAvatar = true}) {
  return CircleAvatar(
    radius: uiAvatar ? 16 : 26,
    backgroundColor: orange1,
    child: CircleAvatar(
      radius: uiAvatar ? 14 : 24,
      backgroundImage:
          const AssetImage('assets/images/portrait_placeholder.png'),
    ),
  );
}
