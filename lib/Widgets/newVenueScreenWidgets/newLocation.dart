import 'package:bzoozle/Lists/areas.dart';
import 'package:bzoozle/Lists/hostBuildings.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Providers/pageNumberProvider.dart';
import 'package:bzoozle/Providers/venueProvider.dart';
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
  TextEditingController? directionsController;

  // @override
  // void initState() {
  //   final venueProvider = Provider.of<VenueProvider>(context, listen: false);
  //   if (widget.newVenue != null) {
  //     venueProvider.loadVenue(widget.newVenue);
  //   } else {
  //     venueProvider.loadVenue(null);
  //   }

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                            decoration: InputDecoration(
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
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Street'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 16.0, left: 28.0, right: 28.0),
                      child: Container(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text("Select Host Building"),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 16.0, left: 28.0, right: 28.0),
                      child: Container(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text("Select Area"),
                          items: areaList.map((area) {
                            return DropdownMenuItem(
                                value: area, child: Text(area));
                          }).toList(),
                          onChanged: (String? value) {
                            venueProvider.changeArea = value!;
                            dropdownAreaValue = venueProvider.venueArea;
                          },
                          value: dropdownAreaValue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 16.0, left: 28.0, right: 28.0),
                      child: Container(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text("Select City"),
                          items: cityList.map((city) {
                            return DropdownMenuItem(
                                value: city, child: Text(city));
                          }).toList(),
                          onChanged: (String? value) {
                            venueProvider.changeCity = value!;
                            dropdownCityValue = venueProvider.venueCity;
                          },
                          value: dropdownCityValue,
                        ),
                      ),
                    ),
                    TextField(
                      textInputAction: TextInputAction.go,
                      controller: postcodeController,
                      onChanged: (String value) =>
                          venueProvider.changePostcode = value,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Zip/Postcode'),
                    ),
                    TextFormField(
                      controller: directionsController,
                      minLines: 5,
                      maxLines: null,
                      onChanged: (String value) =>
                          venueProvider.changeDirections = value,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Directions'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: ElevatedButton(
                                onPressed: () {
                                  pageNumberProvider.changePageNumber(1);
                                },
                                child: Text("< Prev")),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Cancel"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: ElevatedButton(
                                onPressed: () {
                                  pageNumberProvider.changePageNumber(1);
                                },
                                child: Text("Next >")),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 300.0,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
