import 'package:bzoozle/Lists/yes_no_list.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewPoliciesScreen extends StatefulWidget {
  const NewPoliciesScreen({Key? key}) : super(key: key);

  @override
  State<NewPoliciesScreen> createState() => _NewPoliciesScreenState();
}

class _NewPoliciesScreenState extends State<NewPoliciesScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    String dressCodeValue = "Restrictions";
    String coverChargeValue = "Never";
    String smokingValue = "Restricted";
    String childValue = "No";
    String dogValue = "No";
    TextEditingController? dressCodeController;
    TextEditingController? coverChargeController;
    TextEditingController? smokingController;
    TextEditingController? childController;
    TextEditingController? dogController;

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
                  child: Text("POLICIES",
                      style: themeProvider.getTheme.textTheme.headline1),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("DRESS CODE",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Is there a dress code?",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            DropdownButton<String>(
                              value: dressCodeValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dressCodeValue = newValue!;
                                });
                              },
                              items: dressCodeList
                                  .map<DropdownMenuItem<String>>(
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: dressCodeController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          //onChanged: (String value) => venueProvider.changeName = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("COVER CHARGE",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Is there a cover charge?",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            DropdownButton<String>(
                              value: coverChargeValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  coverChargeValue = newValue!;
                                });
                              },
                              items: coverChargeList
                                  .map<DropdownMenuItem<String>>(
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: coverChargeController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          //onChanged: (String value) => venueProvider.changeName = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("SMOKING",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Is smoking permitted?",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            DropdownButton<String>(
                              value: smokingValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  smokingValue = newValue!;
                                });
                              },
                              items: smokingList.map<DropdownMenuItem<String>>(
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: smokingController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          //onChanged: (String value) => venueProvider.changeName = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("CHILDREN",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Are children welcome?",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            DropdownButton<String>(
                              value: childValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  childValue = newValue!;
                                });
                              },
                              items: childList.map<DropdownMenuItem<String>>(
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: childController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          //onChanged: (String value) => venueProvider.changeName = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
