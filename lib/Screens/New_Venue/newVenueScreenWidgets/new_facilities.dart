import 'package:bzoozle/Lists/yes_no_list.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewFacilitiesScreen extends StatefulWidget {
  const NewFacilitiesScreen({Key? key}) : super(key: key);

  @override
  State<NewFacilitiesScreen> createState() => _NewFacilitiesScreenState();
}

class _NewFacilitiesScreenState extends State<NewFacilitiesScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    String indoorValue = "Yes";
    String outdoorValue = "No";
    String rooftopValue = "No";
    String breakfastValue = "No";
    String lunchValue = "No";
    String dinnerValue = "No";
    String lateValue = "No";
    String wifiValue = "Free";
    String liveEntValue = "No";
    String djEntValue = "No";
    String recordedEntValue = "No";
    String karaokeValue = "No";
    String gamblingGamesValue = "No";
    String boardGamesValue = "No";
    String pubGamesValue = "No";
    String parkingValue = "Free";
    String accessibilityValue = "Good";
    TextEditingController? indoorOutdoorController;
    TextEditingController? foodController;
    TextEditingController? passwordController;
    TextEditingController? wifiController;
    TextEditingController? entertainmentController;
    TextEditingController? gamesController;
    TextEditingController? parkingController;
    TextEditingController? accessibilityController;

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
                  child: Text("FACILITIES",
                      style: themeProvider.getTheme.textTheme.headline1),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                    child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text("INDOOR/OUTDOOR",
                          style: themeProvider.getTheme.textTheme.headline2),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 2.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Indoor",
                            style: themeProvider.getTheme.textTheme.bodyText1,
                          ),
                          const Spacer(),
                          DropdownButton<String>(
                            value: indoorValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30, //this inicrease the size
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                indoorValue = newValue!;
                              });
                            },
                            items: yesNoList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 2.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Outdoor",
                            style: themeProvider.getTheme.textTheme.bodyText1,
                          ),
                          const Spacer(),
                          DropdownButton<String>(
                            value: outdoorValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30, //this inicrease the size
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                outdoorValue = newValue!;
                              });
                            },
                            items: yesNoList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 2.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rooftop",
                            style: themeProvider.getTheme.textTheme.bodyText1,
                          ),
                          const Spacer(),
                          DropdownButton<String>(
                            value: rooftopValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30, //this inicrease the size
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                rooftopValue = newValue!;
                              });
                            },
                            items: yesNoList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                      child: TextField(
                        textInputAction: TextInputAction.go,
                        controller: indoorOutdoorController,
                        minLines: 1,
                        maxLines: 10,
                        style: themeProvider.getTheme.textTheme.bodyText1,
                        textAlignVertical: TextAlignVertical.top,
                        //onChanged: (String value) => venueProvider.changeName = value,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Comments'),
                      ),
                    ),
                  ],
                )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                    child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text("FOOD",
                          style: themeProvider.getTheme.textTheme.headline2),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 2.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Breakfast",
                            style: themeProvider.getTheme.textTheme.bodyText1,
                          ),
                          const Spacer(),
                          DropdownButton<String>(
                            value: breakfastValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30, //this inicrease the size
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                breakfastValue = newValue!;
                              });
                            },
                            items: yesNoList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 2.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lunch",
                            style: themeProvider.getTheme.textTheme.bodyText1,
                          ),
                          const Spacer(),
                          DropdownButton<String>(
                            value: lunchValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30, //this inicrease the size
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                lunchValue = newValue!;
                              });
                            },
                            items: yesNoList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 2.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dinner",
                            style: themeProvider.getTheme.textTheme.bodyText1,
                          ),
                          const Spacer(),
                          DropdownButton<String>(
                            value: dinnerValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30, //this inicrease the size
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dinnerValue = newValue!;
                              });
                            },
                            items: yesNoList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 2.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Late",
                            style: themeProvider.getTheme.textTheme.bodyText1,
                          ),
                          const Spacer(),
                          DropdownButton<String>(
                            value: lateValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30, //this inicrease the size
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                lateValue = newValue!;
                              });
                            },
                            items: yesNoList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                      child: TextField(
                        textInputAction: TextInputAction.go,
                        controller: foodController,
                        minLines: 1,
                        maxLines: 10,
                        style: themeProvider.getTheme.textTheme.bodyText1,
                        textAlignVertical: TextAlignVertical.top,
                        //onChanged: (String value) => venueProvider.changeName = value,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Comments'),
                      ),
                    ),
                  ],
                )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("WIFI",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Is wifi available?",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: wifiValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  wifiValue = newValue!;
                                });
                              },
                              items: wifiList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: passwordController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          maxLines: 1,
                          //onChanged: (String value) => venueProvider.changeName = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: wifiController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          //onChanged: (String value) => venueProvider.changeName = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("ENTERTAINMENT",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Live entertainment",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: liveEntValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  liveEntValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "DJ",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: djEntValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  djEntValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recorded Music",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: recordedEntValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  recordedEntValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Karaoke",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: karaokeValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  karaokeValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: entertainmentController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          //onChanged: (String value) => venueProvider.changeName = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("GAMES",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Gambling",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: gamblingGamesValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  gamblingGamesValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Board Games",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: boardGamesValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  boardGamesValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pub Games",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: pubGamesValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  pubGamesValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: gamesController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          //onChanged: (String value) => venueProvider.changeName = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("ONSITE PARKING",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Onsite parking?",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: parkingValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  parkingValue = newValue!;
                                });
                              },
                              items: parkingList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: parkingController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          //onChanged: (String value) => venueProvider.changeName = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Accessibility",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Disability facilities?",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: accessibilityValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  accessibilityValue = newValue!;
                                });
                              },
                              items: accessibilityList
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: accessibilityController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          //onChanged: (String value) => venueProvider.changeName = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
