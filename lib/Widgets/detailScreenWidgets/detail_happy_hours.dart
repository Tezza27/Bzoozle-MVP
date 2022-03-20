import 'package:bzoozle/Models/happy_hour_session.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../times_card_widgets/hh_times_card.dart';

class DetailHappyHours extends StatelessWidget {
  const DetailHappyHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    return venueProvider.happyHours.isEmpty
        ? Column(
            children: const <Widget>[
              SizedBox(
                height: 100.0,
              ),
              Text(
                "no happy hours that we know about at the moment",
                style: TextStyle(color: Colors.orange),
                textAlign: TextAlign.center,
              ),
            ],
          )
        : SliverFixedExtentList(
            itemExtent: 100,
            delegate: SliverChildBuilderDelegate(
                // scrollDirection: Axis.vertical,
                // shrinkWrap: true,
                // itemCount: venueProvider.happyHours.length,
                (BuildContext context, int index) {
              HappyHourSession session = venueProvider.happyHours[index];
              return hhTimesCard(context, session);
            }, childCount: venueProvider.happyHours.length),
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
  }
}
