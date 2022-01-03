import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailLocation extends StatelessWidget {
  const DetailLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            venueProvider.venueHostBuilding == null
                ? Container()
                : Text("$venueProvider.venueHostBuilding"),
            Text("$venueProvider.venueDoorNumber $venueProvider.venueStreet"),
            Text("$venueProvider.venueCity"),
            Text("$venueProvider.venuePostcode"),
            const SizedBox(
              height: 30.0,
            ),
            venueProvider.venueDirections != null
                ? const Text("Directions")
                : Container(),
            venueProvider.venueDirections != null
                ? Text("$venueProvider.venueDirections")
                : Container(),
          ],
        ),
      ),
    );
  }
}
