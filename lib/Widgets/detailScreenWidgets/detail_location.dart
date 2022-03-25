import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';
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
            SizedBox(
              height: 80.0,
              width: double.infinity,
              child: Neon(
                text: "LOCATION",
                color: Colors.lightBlue,
                fontSize: 30, //mySize,
                font: NeonFont.Monoton,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8000.0,
                glowing: true,
                //glowingDuration: const Duration(seconds: 2),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            venueProvider.venueHostBuilding == null
                ? Container()
                : Text(
                    venueProvider.venueHostBuilding!,
                    style: TextStyle(color: Theme.of(context).splashColor),
                  ),
            Text(
              addressBuilder(
                  unitNumber: venueProvider.venueDoorNumber,
                  streetName: venueProvider.venueStreet),
              style: TextStyle(color: Theme.of(context).splashColor),
            ),
            Text(
              venueProvider.venueCity!,
              style: TextStyle(color: Theme.of(context).splashColor),
            ),
            Text(
              venueProvider.venuePostcode!,
              style: TextStyle(color: Theme.of(context).splashColor),
            ),
            const SizedBox(
              height: 30.0,
            ),
            venueProvider.venueDirections != null
                ? Text(
                    "Directions",
                    style: TextStyle(color: Theme.of(context).splashColor),
                  )
                : Container(),
            venueProvider.venueDirections != null
                ? Text(
                    venueProvider.venueDirections!,
                    style: TextStyle(color: Theme.of(context).splashColor),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  String addressBuilder({String? unitNumber, String? streetName}) {
    unitNumber == null ? unitNumber = "" : unitNumber = unitNumber;
    streetName == null ? streetName = "" : streetName = streetName;
    return unitNumber + " " + streetName;
  }
}
