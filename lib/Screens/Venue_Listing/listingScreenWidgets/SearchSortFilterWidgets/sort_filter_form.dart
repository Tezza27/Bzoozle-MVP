import 'package:bzoozle/Lists/venue_type_lists.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeProvider.getTheme.primaryColor,
        title: Text("Search, Sort & Filter",
            style: themeProvider.getTheme.textTheme.headline2),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 8.0,
          right: 8.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Saved search dropdown"),
            const Text("Currently open switch"),
            const Text("Search by venue name"),
            const Text("Sort by dropdown"),
            const Text("Venue type list"),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 0.0),
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
                      GridView.builder(
                        itemCount: venueTypeList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                crossAxisCount: 3),
                        itemBuilder: (context, index) =>
                            filterChoice(titleText: venueTypeList[index]),
                        shrinkWrap: true,
                      ),

                      // children: <Widget>[
                      //   filterChoice(titleText: "Bars"),
                      //   filterChoice(titleText: "Lounges"),
                      //   filterChoice(titleText: "Clubs"),
                    ],
                  ),
                ),
              ),
            ),
            const Text("Theme list"),
            const Text("Host building dropdown"),
            const Text("Area list"),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Cancel")),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Save Search")),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Let's Go!")),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget filterChoice({required String titleText}) {
    bool optionSelected = false;
    return Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.only(top: 20),
        child: FilterChip(
          label: Text(titleText),
          selected: optionSelected,
          onSelected: (bool value) {
            optionSelected = value;
            setState(() {});
          },
          selectedColor: Colors.green,
          checkmarkColor: Colors.deepOrange,
        ));
  }
}
