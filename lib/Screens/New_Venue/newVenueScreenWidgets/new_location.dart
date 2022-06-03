import 'package:bzoozle/Lists/areas.dart';
import 'package:bzoozle/Lists/host_buildings_list.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Providers/user_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewLocation extends StatefulWidget {
  const NewLocation({Key? key}) : super(key: key);
  final Venue? newVenue = null;
  @override
  _NewLocationState createState() => _NewLocationState();
}

class _NewLocationState extends State<NewLocation> {
  TextEditingController? doorNumberController;
  TextEditingController? unitNumberController;
  TextEditingController? streetController;
  TextEditingController? postcodeController;
  TextEditingController? latController;
  TextEditingController? lonController;
  TextEditingController? directionsController;

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final userProvider = Provider.of<UserProvider>(context);
    doorNumberController?.text = venueProvider.venueDoorNumber!;
    unitNumberController?.text = venueProvider.unitNumber!;
    streetController?.text = venueProvider.venueStreet!;
    postcodeController?.text = venueProvider.venuePostcode!;
    latController?.text = venueProvider.lat!;
    lonController?.text = venueProvider.lon!;
    directionsController?.text = venueProvider.venueDirections!;
    int hostIndex = hostList
        .indexWhere((host) => host.hostName == venueProvider.venueHostBuilding);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 40.0,
                  width: double.infinity,
                  child: Center(
                    child: Text("LOCATION",
                        style: themeProvider.getTheme.textTheme.headline1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 0.0, left: 8.0, right: 8.0),
                  child: Text(
                    "Select the Casino or Mall that the venue is located in, or N/A if it is independent:",
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, bottom: 16.0, left: 28.0, right: 28.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: const Text("Select Host Casino/Mall"),
                    style: themeProvider.getTheme.textTheme.bodyText1,
                    value: venueProvider.venueHostBuilding,
                    items: hostNameList.map((hostBuilding) {
                      return DropdownMenuItem(
                          value: hostBuilding, child: Text(hostBuilding!));
                    }).toList(),
                    onChanged: (String? value) {
                      venueProvider.changeHostBuilding = value!;
                    },
                  ),
                ),
                venueProvider.venueHostBuilding != null &&
                        venueProvider.venueHostBuilding != "N/A"
                    ? Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 3,
                                child: TextField(
                                  textInputAction: TextInputAction.go,
                                  controller: unitNumberController,
                                  onSubmitted: (String value) =>
                                      venueProvider.changeUnitNumber = value,
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Unit #'),
                                ),
                              ),
                              Flexible(
                                flex: 8,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      hostList[hostIndex].addressNumber! +
                                          " " +
                                          hostList[hostIndex].street!,
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText1,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0,
                                bottom: 16.0,
                                left: 28.0,
                                right: 28.0),
                            child: Text(
                              hostList[hostIndex].area!,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0,
                                bottom: 16.0,
                                left: 28.0,
                                right: 28.0),
                            child: Text(
                              hostList[hostIndex].city!,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                            child: Text(
                              hostList[hostIndex].zip!,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 3,
                                child: TextField(
                                  textInputAction: TextInputAction.go,
                                  controller: doorNumberController,
                                  onSubmitted: (String value) =>
                                      venueProvider.changeDoorNumber = value,
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: '#'),
                                ),
                              ),
                              Flexible(
                                flex: 8,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: TextField(
                                    textInputAction: TextInputAction.go,
                                    controller: streetController,
                                    onSubmitted: (String value) =>
                                        venueProvider.changeStreet = value,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Street'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0,
                                bottom: 16.0,
                                left: 28.0,
                                right: 28.0),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              hint: const Text("Select Area"),
                              items: areaList.map((area) {
                                return DropdownMenuItem(
                                    value: area, child: Text(area));
                              }).toList(),
                              onChanged: (String? value) {
                                venueProvider.changeArea = value!;
                              },
                              value: venueProvider.venueArea,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0,
                                bottom: 16.0,
                                left: 28.0,
                                right: 28.0),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              hint: const Text("Select City"),
                              items: cityList.map((city) {
                                return DropdownMenuItem(
                                    value: city, child: Text(city));
                              }).toList(),
                              onChanged: (String? value) {
                                venueProvider.changeCity = value!;
                              },
                              value: venueProvider.venueCity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
                            child: TextField(
                              textInputAction: TextInputAction.go,
                              controller: postcodeController,
                              onChanged: (String value) =>
                                  venueProvider.changePostcode = value,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Zip/Postcode'),
                            ),
                          ),
                        ],
                      ),
                if (userProvider.cat == "A")
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: TextField(
                            textInputAction: TextInputAction.go,
                            controller: latController,
                            onChanged: (String value) =>
                                venueProvider.changeLat = value,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Latitude'),
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Flexible(
                          child: TextField(
                            textInputAction: TextInputAction.go,
                            controller: lonController,
                            onChanged: (String value) =>
                                venueProvider.changeLat = value,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Longitude'),
                          ),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 4.0, left: 8.0, right: 8.0),
                  child: Text(
                    "Can you provide some helpful directions using nearby obvious landmarks?:",
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                ),
                TextFormField(
                  controller: directionsController,
                  minLines: 5,
                  maxLines: null,
                  onChanged: (String value) =>
                      venueProvider.changeDirections = value,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Directions'),
                ),
                const SizedBox(
                  height: 300.0,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
