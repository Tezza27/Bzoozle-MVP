import 'package:bzoozle/Lists/venue_type_lists.dart';
import 'package:bzoozle/Providers/confirmation_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewDescription extends StatefulWidget {
  const NewDescription({Key? key}) : super(key: key);

  @override
  _NewDescriptionState createState() => _NewDescriptionState();
}

class _NewDescriptionState extends State<NewDescription> {
  TextEditingController? venueNameController;
  TextEditingController? venueDescriptionController;
  String? dropdownTypeValue;
  String? dropdownThemeValue;

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final confirmProvider = Provider.of<ConfirmationProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    venueNameController?.text = venueProvider.venueName;
    venueDescriptionController?.text = venueProvider.venueDescription!;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
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
                    child: Text("DESCRIPTION",
                        style: themeProvider.getTheme.textTheme.headline1),
                  ),
                ),
                TextFormField(
                  textInputAction: TextInputAction.go,
                  keyboardType: TextInputType.text,
                  controller: venueNameController,
                  initialValue: venueProvider.venueName,
                  onChanged: (String value) {
                    venueProvider.changeName = value.trim();
                    confirmProvider.changeDescriptionUpdate();
                  },
                  style: themeProvider.getTheme.textTheme.bodyText1,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Venue Name'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 0.0, left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 4,
                        child: Text(
                          "Venue Type:",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          hint: const Text("Select Venue Type"),
                          items: venueTypeList.map((venueType) {
                            return DropdownMenuItem(
                                value: venueType, child: Text(venueType));
                          }).toList(),
                          onChanged: (String? value) {
                            venueProvider.changeType = value!;
                            confirmProvider.changeDescriptionUpdate();
                          },
                          value: venueProvider.venueType,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 0.0, left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 4,
                        child: Text(
                          "Venue Theme:",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          hint: const Text("Select Venue Theme"),
                          items: venueThemeList.map((venueTheme) {
                            return DropdownMenuItem(
                                value: venueTheme, child: Text(venueTheme));
                          }).toList(),
                          onChanged: (String? value) {
                            venueProvider.changeTheme = value!;
                            confirmProvider.changeDescriptionUpdate();
                          },
                          value: venueProvider.venueTheme,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: TextFormField(
                    controller: venueDescriptionController,
                    keyboardType: TextInputType.multiline,
                    minLines: 5,
                    maxLines: null,
                    initialValue: venueProvider.venueDescription,
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.top,
                    style: themeProvider.getTheme.textTheme.bodyText1,
                    onChanged: (String value) {
                      venueProvider.changeDescription = value.trim();
                      confirmProvider.changeDescriptionUpdate();
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Venue Description'),
                  ),
                ),
                const SizedBox(
                  height: 500.0,
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
