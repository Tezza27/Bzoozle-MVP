import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newHappyHourWidgets/add_hh_session.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newHappyHourWidgets/happy_hour_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewHappyHoursScreen extends StatefulWidget {
  const NewHappyHoursScreen({Key? key}) : super(key: key);
  static const String routeName = '/happyhours';

  @override
  _NewHappyHoursScreenState createState() => _NewHappyHoursScreenState();
}

class _NewHappyHoursScreenState extends State<NewHappyHoursScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    String openMessage1 = venueProvider.venueName.isEmpty
        ? "This venue"
        : venueProvider.venueName;
    String openMessage2 = venueProvider.happyHours.isEmpty
        ? "has no happy hours that we know of.  If you know different, please add them here:"
        : "ordinarily holds these happy hours weekly:";

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 16.0, left: 16.0, right: 16.0),
            child: SizedBox(
              height: 30,
              child: Text(
                "$openMessage1 $openMessage2",
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
          venueProvider.happyHours.isEmpty
              ? const SizedBox(
                  height: 100.0,
                )
              : SizedBox(
                  height: 350.0,
                  child: ListView.builder(
                      itemCount: venueProvider.happyHours.length,
                      itemBuilder: (context, index) {
                        return happyHourCard(
                            context, venueProvider.happyHours[index]);
                      }),
                ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Center(
              child: SizedBox(
                height: 40.0,
                width: 100.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AddHHSessionScreen.routeName);
                  },
                  child: const Text(
                    "Add Session",
                    style: TextStyle(color: Colors.orange),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.all(8.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}