import 'package:bzoozle/Lists/hostbuildings.dart';
import 'package:bzoozle/Lists/venueTypeLists.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Providers/venueProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewDescription extends StatefulWidget {
  // const NewDescription({Key? key}) : super(key: key);
  final Venue? newVenue = null;

  @override
  _NewDescriptionState createState() => _NewDescriptionState();
}

class _NewDescriptionState extends State<NewDescription> {
  TextEditingController? venueNameController;
  TextEditingController? venueDescriptionController;
  String? dropdownTypeValue;
  String? dropdownThemeValue;
  String? dropdownHostValue;

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
                    Container(
                      child: TextField(
                        textInputAction: TextInputAction.go,
                        controller: venueNameController,
                        onChanged: (String value) =>
                            venueProvider.changeName = value,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Venue Name'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 0.0, left: 28.0, right: 28.0),
                      child: Container(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text("Select Venue Type"),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 0.0, left: 28.0, right: 28.0),
                      child: Container(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text("Select Venue Theme"),
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
                    ),
                    Container(
                      child: TextFormField(
                        controller: venueDescriptionController,
                        minLines: 5,
                        maxLines: null,
                        onChanged: (String value) =>
                            venueProvider.changeDescription = value,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Venue Description'),
                      ),
                    ),
                    SizedBox(
                      height: 300.0,
                      width: double.infinity,
                    )
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
