import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailLocation extends StatelessWidget {
  const DetailLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40.0,
                width: double.infinity,
                child: Center(
                  child: Text("LOCATION",
                      style: themeProvider.getTheme.textTheme.headline1),
                ),
              ),
              // child: Neon(
              //   text: "LOCATION",
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

              venueProvider.venueHostBuilding == null
                  ? Container()
                  : Text(
                      venueProvider.venueHostBuilding!,
                      style: themeProvider.getTheme.textTheme.bodyText1,
                    ),
              Text(
                addressBuilder(
                    unitNumber: venueProvider.venueDoorNumber,
                    streetName: venueProvider.venueStreet),
                style: themeProvider.getTheme.textTheme.bodyText1,
              ),
              Text(
                venueProvider.venueCity!,
                style: themeProvider.getTheme.textTheme.bodyText1,
              ),
              Text(
                venueProvider.venuePostcode!,
                style: themeProvider.getTheme.textTheme.bodyText1,
              ),
              const SizedBox(
                height: 30.0,
              ),
              venueProvider.venueDirections != null
                  ? Text(
                      "Directions",
                      style: themeProvider.getTheme.textTheme.headline2,
                    )
                  : Container(),
              venueProvider.venueDirections != null
                  ? Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: Text(
                          venueProvider.venueDirections!,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
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
