import 'package:bzoozle/Lists/venue_type_lists.dart';
import 'package:bzoozle/Providers/page_number_provider.dart';
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
  String? dropdownHostValue;

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
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
                  child: Text("DESCRIPTION",
                      style: themeProvider.getTheme.textTheme.headline1),
                ),
              ),
              TextField(
                textInputAction: TextInputAction.go,
                controller: venueNameController,
                onChanged: (String value) => venueProvider.changeName = value,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Venue Name'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 0.0, left: 28.0, right: 28.0),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: const Text("Select Venue Type"),
                  items: venueTypeList.map((venueType) {
                    return DropdownMenuItem(
                        value: venueType, child: Text(venueType));
                  }).toList(),
                  onChanged: (String? value) {
                    venueProvider.changeType = value!;
                    dropdownTypeValue = venueProvider.venueType;
                  },
                  value: dropdownTypeValue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 0.0, left: 28.0, right: 28.0),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: const Text("Select Venue Theme"),
                  items: venueThemeList.map((venueTheme) {
                    return DropdownMenuItem(
                        value: venueTheme, child: Text(venueTheme));
                  }).toList(),
                  onChanged: (String? value) {
                    venueProvider.changeTheme = value!;
                    dropdownThemeValue = venueProvider.venueTheme;
                  },
                  value: dropdownThemeValue,
                ),
              ),
              TextFormField(
                controller: venueDescriptionController,
                minLines: 5,
                maxLines: null,
                onChanged: (String value) =>
                    venueProvider.changeDescription = value,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Venue Description'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(child: Container()),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Cancel"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          pageNumberProvider.changePageNumber(1);
                        },
                        child: const Text("Locaction >")),
                  ),
                ],
              ),
              const SizedBox(
                height: 300.0,
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
