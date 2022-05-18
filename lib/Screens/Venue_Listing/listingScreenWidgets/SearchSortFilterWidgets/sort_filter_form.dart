import 'package:bzoozle/Lists/areas.dart';
import 'package:bzoozle/Lists/venue_type_lists.dart';
import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SortFilterScreen extends StatefulWidget {
  const SortFilterScreen({Key? key}) : super(key: key);
  static const String routeName = '/sortfilter';

  @override
  State<SortFilterScreen> createState() => _SortFilterScreenState();
}

class _SortFilterScreenState extends State<SortFilterScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    bool typesIsChecked = true;
    bool themeIsChecked = true;
    bool areaIsChecked = true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeProvider.getTheme.primaryColor,
        title: Text("Search, Sort & Filter",
            style: themeProvider.getTheme.textTheme.headline2),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 8.0,
          right: 8.0,
        ),
        children: [
          const Text("Venue Count"),
          const Text("Saved search dropdown"),
          const Text("Currently open switch"),
          const Text("Search by venue name"),
          const Text("Sort by dropdown"),
          const Text("Host building dropdown"),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                child: Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Area",
                            style: themeProvider.getTheme.textTheme.headline4,
                          ),
                          const Spacer(),
                          Checkbox(
                            value: areaIsChecked,
                            checkColor: themeProvider.getTheme.primaryColor,
                            activeColor: themeProvider.getTheme.splashColor,
                            onChanged: (bool? value) {
                              setState(
                                () {
                                  areaIsChecked = value!;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Divider(
                        height: 0.0,
                        thickness: 1.0,
                        color: themeProvider.getTheme.primaryColor,
                        indent: 2,
                        endIndent: 2,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          //alignment: WrapAlignment.start,
                          children: [
                            for (int i = 0; i <= areaList.length - 1; i++)
                              filterChoice(titleText: areaList[i]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                child: Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Venue Type",
                            style: themeProvider.getTheme.textTheme.headline4,
                          ),
                          const Spacer(),
                          Checkbox(
                            value: typesIsChecked,
                            checkColor: themeProvider.getTheme.primaryColor,
                            activeColor: themeProvider.getTheme.splashColor,
                            onChanged: (bool? value) {
                              setState(
                                () {
                                  typesIsChecked = value!;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Divider(
                        height: 0.0,
                        thickness: 1.0,
                        color: themeProvider.getTheme.primaryColor,
                        indent: 2,
                        endIndent: 2,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          //alignment: WrapAlignment.start,
                          children: [
                            for (int i = 0; i <= venueTypeList.length - 1; i++)
                              filterChoice(titleText: venueTypeList[i]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Venue Theme",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: themeIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                themeIsChecked = value!;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    Divider(
                      height: 0.0,
                      thickness: 1.0,
                      color: themeProvider.getTheme.primaryColor,
                      indent: 2,
                      endIndent: 2,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        spacing: 1.0,
                        runSpacing: 0.0,
                        children: [
                          for (int i = 0; i <= venueThemeList.length - 1; i++)
                            filterChoice(titleText: venueThemeList[i]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Text("Setting list"),
          const Text("Food list"),
          const Text("Wifi list"),
          const Text("Entertainment list"),
          const Text("Games list"),
          const Text("Parking list"),
          const Text("Accessibility list"),
          const Text("Dress code list"),
          const Text("Cover Charge list"),
          const Text("Smoking list"),
          const Text("Child-friendly list"),
          const Text("Additional Fees list"),
          const Text("Price Guide list"),
          const Text("Happy Hour list"),
          const Spacer(),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Cancel")),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Save Search")),
              ElevatedButton(onPressed: () {}, child: const Text("Let's Go!")),
            ],
          )
        ],
      ),
    );
  }

  Widget filterChoice({required String titleText}) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    bool optionSelected = false;
    return FilterChip(
      padding: const EdgeInsets.all(1.0),
      backgroundColor: themeProvider.getTheme.splashColor,
      selectedColor: themeProvider.getTheme.primaryColor,
      shadowColor: themeProvider.getTheme.primaryColor,
      checkmarkColor: Colors.white,
      elevation: 4,
      pressElevation: 8,
      label: Text(titleText,
          style: themeProvider.getTheme.textTheme.bodyText2!
              .copyWith(color: orangeWhite)),
      selected: optionSelected,
      onSelected: (bool value) {
        setState(() {
          optionSelected = value;
        });
      },
    );
  }
}
