import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/verify_panel.dart';

import 'package:flutter/material.dart';

Widget circularAvatarInk(
    {required BuildContext context,
    required String titleText,
    required String venueName,
    required String imageUrl,
    required Color backColor}) {
  return InkWell(
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return verifyPanel(context, titleText, venueName);
        },
      );
    },
    splashColor: backColor,
    child: circularAvatar(
        uiAvatar: true, imageUrl: imageUrl, backColor: backColor),
  );
}

CircleAvatar circularAvatar(
    {bool uiAvatar = true, String? imageUrl, required Color backColor}) {
  String myImage;
  if (imageUrl != "") {
    myImage = imageUrl!;
  } else {
    myImage = "";
  }
  return CircleAvatar(
    radius: uiAvatar ? 16 : 26,
    backgroundColor: backColor,
    child: CircleAvatar(
        radius: uiAvatar ? 14 : 24,
        backgroundImage: myImage == ""
            ? const AssetImage('assets/images/portrait_placeholder.png')
            : NetworkImage(imageUrl!) as ImageProvider),
  );
}
