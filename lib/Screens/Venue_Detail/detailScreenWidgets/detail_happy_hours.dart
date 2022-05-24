import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/circular_avatar.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/times_card_widgets/hh_times_card.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailHappyHours extends StatelessWidget {
  const DetailHappyHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              SizedBox(
                height: 40.0,
                width: double.infinity,
                child: Center(
                  child: Text("HAPPY HOURS",
                      style: themeProvider.getTheme.textTheme.headline1),
                ),
              ),
              Positioned(
                top: 7.0,
                right: 8.0,
                child: circularAvatarInk(
                    context: context,
                    titleText: "Happy Hours",
                    venueName: venueProvider.venueName),
              ),
            ],
          ),
          venueProvider.happyHours != null
              ? ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: venueProvider.happyHours?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return hhTimesCard(
                        context, venueProvider.happyHours![index]);
                  },
                )
              : SizedBox(
                  height: 100.0,
                  child: Text(
                    "no happy hours that we know about at the moment",
                    style: themeProvider.getTheme.textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
            child: Text(
              "What's on Offer?",
              style: themeProvider.getTheme.textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
            child: Text(
              venueProvider.hhOffer ?? '?',
              style: themeProvider.getTheme.textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 300.0),
        ],
      ),
    );
  }
}
