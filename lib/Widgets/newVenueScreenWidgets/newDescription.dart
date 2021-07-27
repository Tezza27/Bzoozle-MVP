import 'package:bzoozle/Lists/hostbuildings.dart';
import 'package:bzoozle/Lists/venueTypeLists.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

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

  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText2 = FocusNode();
  final FocusNode _nodeText3 = FocusNode();
  final FocusNode _nodeText4 = FocusNode();
  final FocusNode _nodeText5 = FocusNode();
  final FocusNode _nodeText6 = FocusNode();

  /// Creates the [KeyboardActionsConfig] to hook up the fields
  /// and their focus nodes to our [FormKeyboardActions].
  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: [
        KeyboardActionsItem(
          focusNode: _nodeText1,
        ),
        KeyboardActionsItem(focusNode: _nodeText2, toolbarButtons: [
          (node) {
            return GestureDetector(
              onTap: () => node.unfocus(),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.close),
              ),
            );
          }
        ]),
        KeyboardActionsItem(
          focusNode: _nodeText3,
          onTapAction: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Custom Action"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("OK"),
                        onPressed: () => Navigator.of(context).pop(),
                      )
                    ],
                  );
                });
          },
        ),
        KeyboardActionsItem(
          focusNode: _nodeText4,
        ),
          KeyboardActionsItem(
          focusNode: _nodeText5,
          toolbarButtons: [
            //button 1
            (node) {
              return GestureDetector(
                onTap: () => node.unfocus(),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "CLOSE",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            },
            //button 2
            (node) {
              return GestureDetector(
                onTap: () => node.unfocus(),
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "DONE",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }
          ],
        ),
        KeyboardActionsItem(
          focusNode: _nodeText6,
          footerBuilder: (_) => PreferredSize(
              child: SizedBox(
                  height: 40,
                  child: Center(
                    child: Text('Custom Footer'),
                  )),
              preferredSize: Size.fromHeight(40)),
        ),
      ],
    );
  }

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
                    keyboardType: TextInputType.text,
                    focusNode: _nodeText2,
                    controller: venueDescriptionController,
                    minLines: 5,
                    maxLines: null,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Venue Description'),
                  ),
                ),
                // TextField(
                //   keyboardType: TextInputType.text,
                //   focusNode: _nodeText2,
                //   decoration: InputDecoration(
                //     hintText: "Input Text with Custom Done Button",
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
