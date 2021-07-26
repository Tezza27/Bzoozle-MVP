import 'package:bzoozle/Lists/hostbuildings.dart';
import 'package:bzoozle/Lists/venueTypeLists.dart';
import 'package:flutter/material.dart';

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
    return SingleChildScrollView(
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
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Venue Name'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: DropdownButton<String>(
                        hint: Text("Select Venue Type"),
                        items: venueTypeList.map((venueType) {
                          return DropdownMenuItem(
                              value: venueType, child: Text(venueType));
                        }).toList(),
                        onChanged: (String? newType) {
                          setState(() {
                            dropdownTypeValue = newType;
                          });
                        },
                        value: dropdownTypeValue,
                      ),
                    ),
                    Container(
                      child: DropdownButton<String>(
                        hint: Text("Select Venue Theme"),
                        items: venueThemeList.map((venueTheme) {
                          return DropdownMenuItem(
                              value: venueTheme, child: Text(venueTheme));
                        }).toList(),
                        onChanged: (String? newTheme) {
                          setState(() {
                            dropdownThemeValue = newTheme;
                          });
                        },
                        value: dropdownThemeValue,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: DropdownButton<String>(
                    hint: Text("Select Venue Theme"),
                    items: hostBuildingList.map((hostBuilding) {
                      return DropdownMenuItem(
                          value: hostBuilding, child: Text(hostBuilding));
                    }).toList(),
                    onChanged: (String? newHost) {
                      setState(() {
                        dropdownHostValue = newHost;
                      });
                    },
                    value: dropdownHostValue,
                  ),
                ),
                Container(
                  child: TextFormField(
                    textInputAction: TextInputAction.go,
                    controller: venueDescriptionController,
                    minLines: 5,
                    maxLines: null,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Venue Description'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
