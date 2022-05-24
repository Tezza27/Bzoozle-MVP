import 'package:bzoozle/Lists/areas.dart';
import 'package:bzoozle/Lists/host_buildings_list.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Providers/page_number_provider.dart';
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
  TextEditingController? streetController;
  String? dropdownHostValue;
  String? dropdownAreaValue;
  String? dropdownCityValue;

  TextEditingController? postcodeController;
  TextEditingController? latController;
  TextEditingController? lonController;
  TextEditingController? directionsController;

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
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
                      top: 8.0, bottom: 16.0, left: 28.0, right: 28.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: const Text("Select Host Building"),
                    style: themeProvider.getTheme.textTheme.bodyText1,
                    items: hostBuildingList.map((hostBuilding) {
                      return DropdownMenuItem(
                          value: hostBuilding, child: Text(hostBuilding));
                    }).toList(),
                    onChanged: (String? value) {
                      venueProvider.changeHostBuilding = value!;
                      dropdownHostValue = venueProvider.venueHostBuilding;
                    },
                    value: dropdownHostValue,
                  ),
                ),
                //TODO automate host building address completion on selection
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 2,
                      child: TextField(
                        textInputAction: TextInputAction.go,
                        controller: doorNumberController,
                        onChanged: (String value) =>
                            venueProvider.changeDoorNumber = value,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: '#'),
                      ),
                    ),
                    Flexible(
                      flex: 8,
                      child: TextField(
                        textInputAction: TextInputAction.go,
                        controller: streetController,
                        onChanged: (String value) =>
                            venueProvider.changeStreet = value,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Street'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 16.0, left: 28.0, right: 28.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    style: themeProvider.getTheme.textTheme.bodyText1,
                    hint: const Text("Select Area"),
                    items: areaList.map((area) {
                      return DropdownMenuItem(value: area, child: Text(area));
                    }).toList(),
                    onChanged: (String? value) {
                      venueProvider.changeArea = value!;
                      dropdownAreaValue = venueProvider.venueArea;
                    },
                    value: dropdownAreaValue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 16.0, left: 28.0, right: 28.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    style: themeProvider.getTheme.textTheme.bodyText1,
                    hint: const Text("Select City"),
                    items: cityList.map((city) {
                      return DropdownMenuItem(value: city, child: Text(city));
                    }).toList(),
                    onChanged: (String? value) {
                      venueProvider.changeCity = value!;
                      dropdownCityValue = venueProvider.venueCity;
                    },
                    value: dropdownCityValue,
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
                //TODO make lon and lat only visible to admin accounts
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
