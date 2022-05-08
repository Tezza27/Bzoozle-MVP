import 'package:bzoozle/Lists/yes_no_list.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewFacilities extends StatefulWidget {
  const NewFacilities({Key? key}) : super(key: key);

  @override
  State<NewFacilities> createState() => _NewFacilitiesState();
}

class _NewFacilitiesState extends State<NewFacilities> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    String indoorValue = "Yes";
    String outdoorValue = "No";
    String rooftopValue = "No";
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 40.0,
                width: double.infinity,
                child: Center(
                  child: Text("FACILITIES",
                      style: themeProvider.getTheme.textTheme.headline1),
                ),
              ),
              Card(
                  child: Column(
                children: <Widget>[
                  Text("INDOOR/OUTDOOR",
                      style: themeProvider.getTheme.textTheme.headline2),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Indoor",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            DropdownButton<String>(
                              value: indoorValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              // this is for underline
                              // to give an underline us this in your underline inspite of Container
                              //       Container(
                              //         height: 2,
                              //         color: Colors.grey,
                              //       )
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  indoorValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Outdoor",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            DropdownButton<String>(
                              value: outdoorValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              // this is for underline
                              // to give an underline us this in your underline inspite of Container
                              //       Container(
                              //         height: 2,
                              //         color: Colors.grey,
                              //       )
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  outdoorValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Rooftop",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            DropdownButton<String>(
                              value: rooftopValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              // this is for underline
                              // to give an underline us this in your underline inspite of Container
                              //       Container(
                              //         height: 2,
                              //         color: Colors.grey,
                              //       )
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  rooftopValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
