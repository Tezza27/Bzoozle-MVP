import 'package:bzoozle/Lists/contact_categories.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);
  static const String routeName = '/contactScreen';
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  String currentValue = contactCategoriesList[0];

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeProvider.getTheme.primaryColor,
        title: Text("CONTACT BZOOZLE",
            style: themeProvider.getTheme.textTheme.headline2),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_alt_rounded,
              size: 36.0,
              color: themeProvider.getTheme.splashColor,
            ),
            onPressed: () {
              //TODO add sort & filter function
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                child: Text(
                  "Instructions Text",
                  style: themeProvider.getTheme.textTheme.bodyText1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: DropdownButton<String>(
                      value: currentValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 30, //this inicrease the size
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),

                      underline: Container(),
                      onChanged: (String? newValue) {
                        setState(() {
                          currentValue = newValue!;
                        });
                      },
                      items: contactCategoriesList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              TextFormField(
                minLines: 1,
                maxLines: 1,
                decoration: const InputDecoration(
                  hintText: 'Title',
                  labelText: 'Title',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              TextFormField(
                minLines: 10,
                maxLines: 100,
                decoration: const InputDecoration(
                  hintText: 'Your Query',
                  labelText: 'Your Query',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        side: const BorderSide(width: 1, color: Colors.black),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: Text(
                        "Cancel",
                        style: themeProvider.getTheme.textTheme.bodyText1,
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        side: const BorderSide(width: 1, color: Colors.black),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: Text(
                        "Send",
                        style: themeProvider.getTheme.textTheme.bodyText1,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
