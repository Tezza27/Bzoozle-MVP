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
    TextEditingController? dressCodeController;
    dressCodeController?.text = venueProvider.dressCodeCom.toString();
    TextEditingController? coverChargeController;
    coverChargeController?.text = venueProvider.coverChargeCom.toString();
    TextEditingController? smokingController;
    smokingController?.text = venueProvider.smokingCom.toString();
    TextEditingController? childController;
    childController?.text = venueProvider.childCom.toString();

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
                              value: venueProvider.dressCode,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedDressCode = newValue!;
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
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          controller: dressCodeController,
                          initialValue: venueProvider.dressCodeCom,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          onChanged: (String value) =>
                              venueProvider.changeDressCodeCom = value,
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
                              value: venueProvider.coverCharge,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedCoverCharge = newValue!;
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
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          controller: coverChargeController,
                          initialValue: venueProvider.coverChargeCom,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          onChanged: (String value) =>
                              venueProvider.changeCoverChargeCom = value,
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
                              value: venueProvider.smoking,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedSmoking = newValue!;
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
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          controller: smokingController,
                          initialValue: venueProvider.smokingCom,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          onChanged: (String value) =>
                              venueProvider.changeSmokingCom = value,
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
                              value: venueProvider.child,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedChild = newValue!;
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
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          controller: childController,
                          initialValue: venueProvider.childCom,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          onChanged: (String value) =>
                              venueProvider.changeChildCom = value,
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
