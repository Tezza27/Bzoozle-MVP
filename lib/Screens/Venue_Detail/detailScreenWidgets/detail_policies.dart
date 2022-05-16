import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/circular_avatar.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPolicies extends StatelessWidget {
  const DetailPolicies({Key? key}) : super(key: key);

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
                  child: Text("POLICIES",
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
                                child: Text("DRESS CODE",
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
                                titleText: "Dress Code",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text("Anything Goes",
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          "This is a comments box to expand upon the the dress code situation",
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
                                child: Text("COVER CHARGE",
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
                                titleText: "Cover Charge",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text("Sometimes",
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          "This is a comments box to expand upon the cover charge situation",
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
                                child: Text("SMOKING",
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
                                titleText: "Smoking",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text("Smoking Allowed",
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          "This is a comments box to expand upon the smoking situation",
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
                                child: Text("CHILD FRIENDLY",
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
                                titleText: "Child Friendly",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text("No Under 21s",
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          "This is a comments box to expand upon the child situation",
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
            ],
          ),
        ),
      ),
    );
  }
}
