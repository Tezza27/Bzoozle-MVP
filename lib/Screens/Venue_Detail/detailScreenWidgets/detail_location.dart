import 'package:bzoozle/Lists/host_buildings_list.dart';
import 'package:bzoozle/Providers/confirmation_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/circular_avatar.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/color_indicator.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailLocation extends StatelessWidget {
  const DetailLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final confirmProvider = Provider.of<ConfirmationProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    int hostIndex = hostList
        .indexWhere((host) => host.hostName == venueProvider.venueHostBuilding);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: [
                  SizedBox(
                    height: 40.0,
                    width: double.infinity,
                    child: Center(
                      child: Text("LOCATION",
                          style: themeProvider.getTheme.textTheme.headline1),
                    ),
                  ),
                  Positioned(
                    top: 7.0,
                    right: 0.0,
                    child: circularAvatarInk(
                      context: context,
                      titleText: "Location",
                      venueName: venueProvider.venueName,
                      imageUrl: confirmProvider.locationCImage != null
                          ? confirmProvider.locationCImage!
                          : confirmProvider.locationUImage != null
                              ? confirmProvider.locationUImage!
                              : "",
                      backColor: colorIndicator(
                          updateDateText: confirmProvider.locationUDate,
                          confirmDateText: confirmProvider.locationCDate),
                    ),
                  ),
                ],
              ),
              venueProvider.venueHostBuilding == "N/A" ||
                      venueProvider.venueHostBuilding == null
                  ? Column(children: <Widget>[
                      Text(
                        addressBuilder(
                            doorNumber: venueProvider.venueDoorNumber,
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
                        height: 20.0,
                      ),
                      Text(
                        venueProvider.venueArea!,
                        style: themeProvider.getTheme.textTheme.bodyText1,
                      ),
                    ])
                  : Column(
                      children: <Widget>[
                        Text(
                          hostAddressBuilder(
                            unitNumber: venueProvider.unitNumber,
                            hostName: venueProvider.venueHostBuilding,
                          ),
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Text(
                          hostList[hostIndex].city!,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Text(
                          hostList[hostIndex].zip!,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          hostList[hostIndex].area!,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                      ],
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 36.0),
                child: Card(
                  elevation: 12.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                          width: 2.0,
                          color: themeProvider.getTheme.primaryColor)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/images/blondies_map.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  String addressBuilder({String? doorNumber, String? streetName}) {
    doorNumber == null ? doorNumber = "" : doorNumber = doorNumber;
    streetName == null ? streetName = "" : streetName = streetName;
    return doorNumber + " " + streetName;
  }

  String hostAddressBuilder({String? unitNumber, String? hostName}) {
    String stringToReturn;
    unitNumber != null && unitNumber != ""
        ? stringToReturn = "Unit: " + unitNumber + " " + hostName!
        : stringToReturn = hostName!;
    return stringToReturn;
  }
}
