import 'package:bzoozle/Lists/areas.dart';
import 'package:bzoozle/Lists/venue_type_lists.dart';
import 'package:bzoozle/Lists/yes_no_list.dart';
import 'package:bzoozle/Models/filterchip_model.dart';
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
  List<ChipDetail> areaChipList = [];
  List<ChipDetail> venueTypeChipList = [];
  List<ChipDetail> venueThemeChipList = [];
  List<ChipDetail> priceChipList = [];
  List<ChipDetail> feesChipList = [];
  List<ChipDetail> indoorChipList = [];
  List<ChipDetail> outdoorChipList = [];
  List<ChipDetail> rooftopChipList = [];
  List<ChipDetail> breakfastChipList = [];
  List<ChipDetail> lunchChipList = [];
  List<ChipDetail> dinnerChipList = [];
  List<ChipDetail> lateChipList = [];
  List<ChipDetail> wifiChipList = [];
  List<ChipDetail> liveChipList = [];
  List<ChipDetail> recordedChipList = [];
  List<ChipDetail> djChipList = [];
  List<ChipDetail> karaokeChipList = [];
  List<ChipDetail> gamblingChipList = [];
  List<ChipDetail> boardChipList = [];
  List<ChipDetail> videoChipList = [];
  List<ChipDetail> pubChipList = [];
  List<ChipDetail> parkingChipList = [];
  List<ChipDetail> accessChipList = [];
  List<ChipDetail> dressCodeChipList = [];
  List<ChipDetail> coverChargeChipList = [];
  List<ChipDetail> smokingChipList = [];
  List<ChipDetail> childFriendlyChipList = [];

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

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    areaChipList = areaChipList.isNotEmpty
        ? areaChipList
        : compileChipList(categoryList: areaList);
    venueTypeChipList = venueTypeChipList.isNotEmpty
        ? venueTypeChipList
        : compileChipList(categoryList: venueTypeList);
    venueThemeChipList = venueThemeChipList.isNotEmpty
        ? venueThemeChipList
        : compileChipList(categoryList: venueThemeList);
    priceChipList = priceChipList.isNotEmpty
        ? priceChipList
        : compileChipList(categoryList: priceList);
    feesChipList = feesChipList.isNotEmpty
        ? feesChipList
        : compileChipList(categoryList: feesList);
    indoorChipList = indoorChipList.isNotEmpty
        ? indoorChipList
        : compileChipList(categoryList: settingList);
    outdoorChipList = outdoorChipList.isNotEmpty
        ? outdoorChipList
        : compileChipList(categoryList: settingList);
    rooftopChipList = rooftopChipList.isNotEmpty
        ? rooftopChipList
        : compileChipList(categoryList: settingList);
    breakfastChipList = breakfastChipList.isNotEmpty
        ? breakfastChipList
        : compileChipList(categoryList: foodList);
    lunchChipList = lunchChipList.isNotEmpty
        ? lunchChipList
        : compileChipList(categoryList: foodList);
    dinnerChipList = dinnerChipList.isNotEmpty
        ? dinnerChipList
        : compileChipList(categoryList: foodList);
    lateChipList = lateChipList.isNotEmpty
        ? lateChipList
        : compileChipList(categoryList: foodList);
    wifiChipList = wifiChipList.isNotEmpty
        ? wifiChipList
        : compileChipList(categoryList: wifiList);
    liveChipList = liveChipList.isNotEmpty
        ? liveChipList
        : compileChipList(categoryList: entertainmentList);
    recordedChipList = recordedChipList.isNotEmpty
        ? recordedChipList
        : compileChipList(categoryList: entertainmentList);
    djChipList = djChipList.isNotEmpty
        ? djChipList
        : compileChipList(categoryList: entertainmentList);
    karaokeChipList = karaokeChipList.isNotEmpty
        ? karaokeChipList
        : compileChipList(categoryList: entertainmentList);
    gamblingChipList = gamblingChipList.isNotEmpty
        ? gamblingChipList
        : compileChipList(categoryList: gamesList);
    boardChipList = boardChipList.isNotEmpty
        ? boardChipList
        : compileChipList(categoryList: gamesList);
    videoChipList = videoChipList.isNotEmpty
        ? videoChipList
        : compileChipList(categoryList: gamesList);
    pubChipList = pubChipList.isNotEmpty
        ? pubChipList
        : compileChipList(categoryList: gamesList);
    parkingChipList = parkingChipList.isNotEmpty
        ? parkingChipList
        : compileChipList(categoryList: parkingList);
    accessChipList = accessChipList.isNotEmpty
        ? accessChipList
        : compileChipList(categoryList: accessibilityList);
    dressCodeChipList = dressCodeChipList.isNotEmpty
        ? dressCodeChipList
        : compileChipList(categoryList: dressCodeList);
    coverChargeChipList = coverChargeChipList.isNotEmpty
        ? coverChargeChipList
        : compileChipList(categoryList: coverChargeList);
    smokingChipList = smokingChipList.isNotEmpty
        ? smokingChipList
        : compileChipList(categoryList: smokingList);
    childFriendlyChipList = childFriendlyChipList.isNotEmpty
        ? childFriendlyChipList
        : compileChipList(categoryList: childList);

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
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Area",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        Checkbox(
                          value: areaIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                areaIsChecked = value!;
                                updateAllAreaChecks(value);
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
                          for (int i = 0; i <= areaChipList.length - 1; i++)
                            filterChoice(myChip: areaChipList[i]),
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
                          "Venue Type",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        Checkbox(
                          value: typesIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                typesIsChecked = value!;
                                updateAllTypeChecks(value);
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
                          for (int i = 0;
                              i <= venueTypeChipList.length - 1;
                              i++)
                            filterChoice(myChip: venueTypeChipList[i]),
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
                          "Venue Theme",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        Checkbox(
                          value: themeIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                themeIsChecked = value!;
                                updateAllThemeChecks(value);
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
                              i <= venueThemeChipList.length - 1;
                              i++)
                            filterChoice(myChip: venueThemeChipList[i]),
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
                        Checkbox(
                          value: priceGuideIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                priceGuideIsChecked = value!;
                                updateAllPriceChecks(value);
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
                          for (int i = 0; i <= priceChipList.length - 1; i++)
                            filterChoice(myChip: priceChipList[i]),
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
                        Checkbox(
                          value: additionalFeesIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                additionalFeesIsChecked = value!;
                                updateAllFeesChecks(value);
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
                          for (int i = 0; i <= feesChipList.length - 1; i++)
                            filterChoice(myChip: feesChipList[i]),
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
                        Checkbox(
                          value: settingIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                settingIsChecked = value!;
                                updateAllIndoorChecks(value);
                                updateAllOutdoorChecks(value);
                                updateAllRooftopChecks(value);
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
                            for (int i = 0; i <= indoorChipList.length - 1; i++)
                              filterChoice(myChip: indoorChipList[i]),
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
                            for (int i = 0;
                                i <= outdoorChipList.length - 1;
                                i++)
                              filterChoice(myChip: outdoorChipList[i]),
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
                            for (int i = 0;
                                i <= rooftopChipList.length - 1;
                                i++)
                              filterChoice(myChip: rooftopChipList[i]),
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
                        Checkbox(
                          value: foodIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                foodIsChecked = value!;
                                updateAllBreakfastChecks(value);
                                updateAllLunchChecks(value);
                                updateAllDinnerChecks(value);
                                updateAllLateChecks(value);
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
                            for (int i = 0;
                                i <= breakfastChipList.length - 1;
                                i++)
                              filterChoice(myChip: breakfastChipList[i]),
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
                            for (int i = 0; i <= lunchChipList.length - 1; i++)
                              filterChoice(myChip: lunchChipList[i]),
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
                            for (int i = 0; i <= dinnerChipList.length - 1; i++)
                              filterChoice(myChip: dinnerChipList[i]),
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
                            for (int i = 0; i <= lateChipList.length - 1; i++)
                              filterChoice(myChip: lateChipList[i]),
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
                        Checkbox(
                          value: wifiIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                wifiIsChecked = value!;
                                updateAllWifiChecks(value);
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
                          for (int i = 0; i <= wifiChipList.length - 1; i++)
                            filterChoice(myChip: wifiChipList[i]),
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
                        Checkbox(
                          value: entertainmentIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                entertainmentIsChecked = value!;
                                updateAllLiveChecks(value);
                                updateAllRecordedChecks(value);
                                updateAllDjChecks(value);
                                updateAllKaraokeChecks(value);
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
                            for (int i = 0; i <= liveChipList.length - 1; i++)
                              filterChoice(myChip: liveChipList[i]),
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
                                i <= recordedChipList.length - 1;
                                i++)
                              filterChoice(myChip: recordedChipList[i]),
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
                            for (int i = 0; i <= djChipList.length - 1; i++)
                              filterChoice(myChip: djChipList[i]),
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
                                i <= karaokeChipList.length - 1;
                                i++)
                              filterChoice(myChip: karaokeChipList[i]),
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
                        Checkbox(
                          value: gamesIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                gamesIsChecked = value!;
                                updateAllGamblingChecks(value);
                                updateAllBoardChecks(value);
                                updateAllVideoChecks(value);
                                updateAllPubChecks(value);
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
                            for (int i = 0;
                                i <= gamblingChipList.length - 1;
                                i++)
                              filterChoice(myChip: gamblingChipList[i]),
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
                            for (int i = 0; i <= boardChipList.length - 1; i++)
                              filterChoice(myChip: boardChipList[i]),
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
                            for (int i = 0; i <= videoChipList.length - 1; i++)
                              filterChoice(myChip: videoChipList[i]),
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
                            for (int i = 0; i <= pubChipList.length - 1; i++)
                              filterChoice(myChip: pubChipList[i]),
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
                        Checkbox(
                          value: parkingIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                parkingIsChecked = value!;
                                updateAllParkingChecks(value);
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
                          for (int i = 0; i <= parkingChipList.length - 1; i++)
                            filterChoice(myChip: parkingChipList[i]),
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
                        Checkbox(
                          value: accessIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                accessIsChecked = value!;
                                updateAllAccessibilityChecks(value);
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
                          for (int i = 0; i <= accessChipList.length - 1; i++)
                            filterChoice(myChip: accessChipList[i]),
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
                        Checkbox(
                          value: dresscodeIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                dresscodeIsChecked = value!;
                                updateAllDressCodeChecks(value);
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
                              i <= dressCodeChipList.length - 1;
                              i++)
                            filterChoice(myChip: dressCodeChipList[i]),
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
                        Checkbox(
                          value: coverChargeIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                coverChargeIsChecked = value!;
                                updateAllCoverChargeChecks(value);
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
                              i <= coverChargeChipList.length - 1;
                              i++)
                            filterChoice(myChip: coverChargeChipList[i]),
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
                        Checkbox(
                          value: smokingIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                smokingIsChecked = value!;
                                updateAllSmokingChecks(value);
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
                          for (int i = 0; i <= smokingChipList.length - 1; i++)
                            filterChoice(myChip: smokingChipList[i]),
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
                        Checkbox(
                          value: childFriendlyIsChecked,
                          checkColor: themeProvider.getTheme.primaryColor,
                          activeColor: themeProvider.getTheme.splashColor,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                childFriendlyIsChecked = value!;
                                updateAllChildFriendlyChecks(value);
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
                              i <= childFriendlyChipList.length - 1;
                              i++)
                            filterChoice(myChip: childFriendlyChipList[i]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Cancel")),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Save Search")),
              ElevatedButton(onPressed: () {}, child: const Text("Let's Go!")),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  List<ChipDetail> compileChipList({required List<String> categoryList}) {
    List<ChipDetail> chipList = [];
    for (int i = 0; i <= categoryList.length - 1; i++) {
      chipList.add(ChipDetail(categoryList[i], true));
    }
    return chipList;
  }

  void updateAllAreaChecks(bool checkedValue) {
    for (var element in areaChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllTypeChecks(bool checkedValue) {
    for (var element in venueTypeChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllThemeChecks(bool checkedValue) {
    for (var element in venueThemeChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllPriceChecks(bool checkedValue) {
    for (var element in priceChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllFeesChecks(bool checkedValue) {
    for (var element in feesChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllIndoorChecks(bool checkedValue) {
    for (var element in indoorChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllOutdoorChecks(bool checkedValue) {
    for (var element in outdoorChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllRooftopChecks(bool checkedValue) {
    for (var element in rooftopChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllBreakfastChecks(bool checkedValue) {
    for (var element in breakfastChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllLunchChecks(bool checkedValue) {
    for (var element in lunchChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllDinnerChecks(bool checkedValue) {
    for (var element in dinnerChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllLateChecks(bool checkedValue) {
    for (var element in lateChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllWifiChecks(bool checkedValue) {
    for (var element in wifiChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllLiveChecks(bool checkedValue) {
    for (var element in liveChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllRecordedChecks(bool checkedValue) {
    for (var element in recordedChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllDjChecks(bool checkedValue) {
    for (var element in djChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllKaraokeChecks(bool checkedValue) {
    for (var element in karaokeChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllGamblingChecks(bool checkedValue) {
    for (var element in gamblingChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllBoardChecks(bool checkedValue) {
    for (var element in boardChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllVideoChecks(bool checkedValue) {
    for (var element in videoChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllPubChecks(bool checkedValue) {
    for (var element in pubChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllParkingChecks(bool checkedValue) {
    for (var element in parkingChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllAccessibilityChecks(bool checkedValue) {
    for (var element in accessChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllDressCodeChecks(bool checkedValue) {
    for (var element in dressCodeChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllCoverChargeChecks(bool checkedValue) {
    for (var element in coverChargeChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllSmokingChecks(bool checkedValue) {
    for (var element in smokingChipList) {
      element.isSelected = checkedValue;
    }
  }

  void updateAllChildFriendlyChecks(bool checkedValue) {
    for (var element in childFriendlyChipList) {
      element.isSelected = checkedValue;
    }
  }

  Widget filterChoice({required ChipDetail myChip}) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return FilterChip(
      padding: const EdgeInsets.all(1.0),
      avatar: Container(
          decoration: BoxDecoration(
              color: myChip.isSelected
                  ? themeProvider.getTheme.splashColor
                  : themeProvider.getTheme.primaryColor,
              shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text('X',
                  style: themeProvider.getTheme.textTheme.headline5!.copyWith(
                      color: myChip.isSelected
                          ? themeProvider.getTheme.primaryColor
                          : themeProvider.getTheme.splashColor)),
            ),
          )),
      backgroundColor: themeProvider.getTheme.splashColor,
      shadowColor: themeProvider.getTheme.primaryColor,
      selectedColor: themeProvider.getTheme.primaryColor,
      selectedShadowColor: themeProvider.getTheme.splashColor,
      checkmarkColor: orangeWhite,
      elevation: 4,
      pressElevation: 8,
      label: Text(myChip.label,
          style: myChip.isSelected
              ? themeProvider.getTheme.textTheme.bodyText2
              : themeProvider.getTheme.textTheme.bodyText2!
                  .copyWith(color: orangeWhite)),
      selected: myChip.isSelected,
      onSelected: (bool newValue) {
        setState(() {
          myChip.isSelected = newValue;
        });
      },
    );
  }
}
