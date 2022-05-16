import 'package:bzoozle/Providers/venue_provider.dart';
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
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: SizedBox(
              height: 40.0,
              width: double.infinity,
              child: Center(
                child: Text("HAPPY HOURS",
                    style: themeProvider.getTheme.textTheme.headline1),
              ),
            ),
          ),
          //  Neon(
          //   text: "HAPPY HOURS",
          //   color: Colors.lightBlue,
          //   fontSize: 30, //mySize,
          //   font: NeonFont.Monoton,
          //   flickeringText: true,
          //   flickeringLetters: null,
          //   blurRadius: 8000.0,
          //   glowing: true,
          //   //glowingDuration: const Duration(seconds: 2),
          //   //textStyle: const TextStyle(fontWeight: FontWeight.bold),
          // ),

          venueProvider.happyHours.isEmpty
              ? const SizedBox(
                  height: 100.0,
                  child: Text(
                    "no happy hours that we know about at the moment",
                    style: TextStyle(color: Colors.orange),
                    textAlign: TextAlign.center,
                  ),
                )
              : ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: venueProvider.happyHours.length,
                  itemBuilder: (BuildContext context, int index) {
                    return hhTimesCard(
                        context, venueProvider.happyHours[index]);
                  },
                ),
          const SizedBox(
            height: 100.0,
            child: Text(
              "Placeholder text for test purposes",
              style: TextStyle(color: Colors.orange),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );

    // return venueProvider.happyHours.isEmpty
    //     ? const Center(
    //         child: Text("No known happy hours at this time"),
    //       )
    //     : ListView.builder(
    //         scrollDirection: Axis.vertical,
    //         shrinkWrap: true,
    //         itemCount: venueProvider.happyHours.length,
    //         itemBuilder: (BuildContext context, int index) {
    //           return hhTimesCard(context, venueProvider.happyHours[index]);
    //         });

// SliverFixedExtentList(
//             itemExtent: 50,
//             delegate: SliverChildBuilderDelegate(
//                 // scrollDirection: Axis.vertical,
//                 // shrinkWrap: true,
//                 // itemCount: venueProvider.happyHours.length,
//                 (BuildContext context, int index) {
//               HappyHourSession session = venueProvider.happyHours[index];
//               return hhTimesCard(context, session);
//             }, childCount: venueProvider.happyHours.length),
//           );
  }
}