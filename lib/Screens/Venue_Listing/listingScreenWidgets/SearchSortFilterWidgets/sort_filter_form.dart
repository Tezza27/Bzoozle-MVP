import 'package:bzoozle/Lists/areas.dart';
import 'package:bzoozle/Lists/venue_type_lists.dart';
import 'package:bzoozle/Lists/yes_no_list.dart';
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
    bool priceGuideIsChecked = true;
    bool additionalFeesIsChecked = true;
    bool settingIsChecked = true;
    bool foodIsChecked = true;
    bool wifiIsChecked = true;
    bool entertainmentIsChecked = true;
    bool gamesIsChecked = true;
    bool parkingIsChecked = true;
    bool accessIsChecked = true;
    bool dresscodeIsChecked = true;
    bool coverChargeIsChecked = true;
    bool smokingIsChecked = true;
    bool childFriendlyIsChecked = true;

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
          const Text("Happy Hour list"),
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
                          "Price Guide",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: priceGuideIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                priceGuideIsChecked = value!;
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
                          for (int i = 0; i <= priceList.length - 1; i++)
                            filterChoice(titleText: priceList[i]),
                        ],
                      ),
                    ),
                  ],
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
                          "Additional Fees",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: additionalFeesIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                additionalFeesIsChecked = value!;
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
                          for (int i = 0; i <= feesList.length - 1; i++)
                            filterChoice(titleText: feesList[i]),
                        ],
                      ),
                    ),
                  ],
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
                          "Setting",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: settingIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                settingIsChecked = value!;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Indoor",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= settingList.length - 1; i++)
                              filterChoice(titleText: settingList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Outdoor",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= settingList.length - 1; i++)
                              filterChoice(titleText: settingList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Rooftop",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= settingList.length - 1; i++)
                              filterChoice(titleText: settingList[i]),
                          ],
                        ),
                      ],
                    ),
                  ],
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
                          "Food",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: foodIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                foodIsChecked = value!;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Breakfast",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= foodList.length - 1; i++)
                              filterChoice(titleText: foodList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Lunch",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= foodList.length - 1; i++)
                              filterChoice(titleText: foodList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Dinner",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= foodList.length - 1; i++)
                              filterChoice(titleText: foodList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Late",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= foodList.length - 1; i++)
                              filterChoice(titleText: foodList[i]),
                          ],
                        ),
                      ],
                    ),
                  ],
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
                          "Wifi",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: wifiIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                wifiIsChecked = value!;
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
                          for (int i = 0; i <= wifiList.length - 1; i++)
                            filterChoice(titleText: wifiList[i]),
                        ],
                      ),
                    ),
                  ],
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
                          "Entertainment",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: entertainmentIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                entertainmentIsChecked = value!;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Live",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0;
                                i <= entertainmentList.length - 1;
                                i++)
                              filterChoice(titleText: entertainmentList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Recorded",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0;
                                i <= entertainmentList.length - 1;
                                i++)
                              filterChoice(titleText: entertainmentList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "DJ",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0;
                                i <= entertainmentList.length - 1;
                                i++)
                              filterChoice(titleText: entertainmentList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Karaoke",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0;
                                i <= entertainmentList.length - 1;
                                i++)
                              filterChoice(titleText: entertainmentList[i]),
                          ],
                        ),
                      ],
                    ),
                  ],
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
                          "Games",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: gamesIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                gamesIsChecked = value!;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Gambling",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= gamesList.length - 1; i++)
                              filterChoice(titleText: gamesList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Board",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= gamesList.length - 1; i++)
                              filterChoice(titleText: gamesList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Video",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= gamesList.length - 1; i++)
                              filterChoice(titleText: gamesList[i]),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Pub",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 1.0,
                          runSpacing: 0.0,
                          children: [
                            for (int i = 0; i <= gamesList.length - 1; i++)
                              filterChoice(titleText: gamesList[i]),
                          ],
                        ),
                      ],
                    ),
                  ],
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
                          "Onsite Parking",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: parkingIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                parkingIsChecked = value!;
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
                          for (int i = 0; i <= parkingList.length - 1; i++)
                            filterChoice(titleText: parkingList[i]),
                        ],
                      ),
                    ),
                  ],
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
                          "Accessibility",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: accessIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                accessIsChecked = value!;
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
                          for (int i = 0;
                              i <= accessibilityList.length - 1;
                              i++)
                            filterChoice(titleText: accessibilityList[i]),
                        ],
                      ),
                    ),
                  ],
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
                          "Dress Code",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: dresscodeIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                dresscodeIsChecked = value!;
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
                          for (int i = 0; i <= dressCodeList.length - 1; i++)
                            filterChoice(titleText: dressCodeList[i]),
                        ],
                      ),
                    ),
                  ],
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
                          "Cover Charge",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: coverChargeIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                coverChargeIsChecked = value!;
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
                          for (int i = 0; i <= coverChargeList.length - 1; i++)
                            filterChoice(titleText: coverChargeList[i]),
                        ],
                      ),
                    ),
                  ],
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
                          "Smoking",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: smokingIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                smokingIsChecked = value!;
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
                          for (int i = 0; i <= smokingList.length - 1; i++)
                            filterChoice(titleText: smokingList[i]),
                        ],
                      ),
                    ),
                  ],
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
                          "Child-Friendly",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        const Spacer(),
                        Checkbox(
                          value: childFriendlyIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                childFriendlyIsChecked = value!;
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
                          for (int i = 0; i <= childList.length - 1; i++)
                            filterChoice(titleText: childList[i]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
