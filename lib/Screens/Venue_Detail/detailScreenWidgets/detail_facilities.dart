import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/circular_avatar.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailFacilities extends StatefulWidget {
  const DetailFacilities({Key? key}) : super(key: key);

  @override
  State<DetailFacilities> createState() => _DetailFacilitiesState();
}

class _DetailFacilitiesState extends State<DetailFacilities> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 40.0,
                width: double.infinity,
                child: Center(
                  child: Text("FACILITIES",
                      style: themeProvider.getTheme.textTheme.headline1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: themeProvider.getTheme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text("SETTING",
                                    style: themeProvider
                                        .getTheme.textTheme.headline2),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 4.0,
                            right: 4.0,
                            child: circularAvatarInk(
                                context: context,
                                titleText: "Setting",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Indoor",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.indoor ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Outdoor",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.outdoor ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Rooftop",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.rooftop ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.settingCom ?? '',
                          maxLines: 10,
                          softWrap: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: themeProvider.getTheme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text("FOOD",
                                    style: themeProvider
                                        .getTheme.textTheme.headline2),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 4.0,
                            right: 4.0,
                            child: circularAvatarInk(
                                context: context,
                                titleText: "Food",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Breakfast",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.breakfast ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Lunch",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.lunch ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dinner",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.dinner ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Late",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.late ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.foodCom ?? '',
                          maxLines: 10,
                          softWrap: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: themeProvider.getTheme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text("WIFI",
                                    style: themeProvider
                                        .getTheme.textTheme.headline2),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 4.0,
                            right: 4.0,
                            child: circularAvatarInk(
                                context: context,
                                titleText: "Wifi",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(venueProvider.wifi ?? '?',
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text("Password: $venueProvider.password!",
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.wifiCom ?? '',
                          maxLines: 10,
                          softWrap: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: themeProvider.getTheme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text("ENTERTAINMENT",
                                    style: themeProvider
                                        .getTheme.textTheme.headline2),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 4.0,
                            right: 4.0,
                            child: circularAvatarInk(
                                context: context,
                                titleText: "Entertainment",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Live",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.live ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "DJ",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.dj ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Recorded",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.recorded ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Karaoke",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.karaoke ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.entertainmentCom ?? '',
                          maxLines: 10,
                          softWrap: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: themeProvider.getTheme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text("GAMES",
                                    style: themeProvider
                                        .getTheme.textTheme.headline2),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 4.0,
                            right: 4.0,
                            child: circularAvatarInk(
                                context: context,
                                titleText: "Games",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Gambling",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.gambling ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Board",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.board ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Video",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.video ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Pub",
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText1,
                                  ),
                                  Text(
                                    venueProvider.pub ?? '?',
                                    style: themeProvider
                                        .getTheme.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.gamesCom ?? '',
                          maxLines: 10,
                          softWrap: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: themeProvider.getTheme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text("ONSITE PARKING",
                                    style: themeProvider
                                        .getTheme.textTheme.headline2),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 4.0,
                            right: 4.0,
                            child: circularAvatarInk(
                                context: context,
                                titleText: "Onsite Parking",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(venueProvider.parking ?? '?',
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.parkingCom ?? '',
                          maxLines: 10,
                          softWrap: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: themeProvider.getTheme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text("ACCESSIBILITY",
                                    style: themeProvider
                                        .getTheme.textTheme.headline2),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 4.0,
                            right: 4.0,
                            child: circularAvatarInk(
                                context: context,
                                titleText: "Accessibility",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(venueProvider.access ?? '?',
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.accessCom ?? '',
                          maxLines: 10,
                          softWrap: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
