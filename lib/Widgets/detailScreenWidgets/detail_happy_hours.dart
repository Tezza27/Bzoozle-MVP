import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailHappyHours extends StatelessWidget {
  const DetailHappyHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Text("Venue Type:"),
                Text("$venueProvider.venueTheme $venueProvider.venueType"),
              ],
            ),
            const Text("Description:"),
            Text("$venueProvider.venueDescription"),
          ],
        ),
      ),
    );
  }
}
