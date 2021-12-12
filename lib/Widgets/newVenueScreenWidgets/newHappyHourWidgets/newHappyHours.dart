import 'package:bzoozle/Providers/venueProvider.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newHappyHourWidgets/happyHourCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewHappyHours extends StatefulWidget {
  const NewHappyHours({Key? key}) : super(key: key);

  @override
  _NewHappyHoursState createState() => _NewHappyHoursState();
}

class _NewHappyHoursState extends State<NewHappyHours> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    String openMessage1 = venueProvider.venueName.length == 0
        ? "This venue"
        : venueProvider.venueName;
    String openMessage2 = venueProvider.happyHours.isEmpty
        ? "has no happy hours that we know of.  If you know different, please add them here:"
        : "ordinarily holds these happy hours weekly:";

    return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 16.0, left: 16.0, right: 16.0),
                child: SizedBox(
                  height: 100,
                  child: Text(
                    "$openMessage1 $openMessage2",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              venueProvider.happyHours.isEmpty
                  ? SizedBox(
                      height: 100.0,
                    )
                  : ListView.builder(
                      itemCount: venueProvider.happyHours.length,
                      itemBuilder: (context, index) {
                        return happyHourCard(
                            context, venueProvider.happyHours[index]);
                      }),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Center(
                  child: SizedBox(
                    height: 40.0,
                    width: 100.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
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
        ),
      ),
    );
  }
}
