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

    TextEditingController? settingController;
    settingController?.text = venueProvider.settingCom.toString();
    TextEditingController? foodController;
    foodController?.text = venueProvider.foodCom.toString();
    TextEditingController? passwordController;
    passwordController?.text = venueProvider.password.toString();
    TextEditingController? wifiController;
    wifiController?.text = venueProvider.wifiCom.toString();
    TextEditingController? entertainmentController;
    entertainmentController?.text = venueProvider.entertainmentCom.toString();
    TextEditingController? gamesController;
    gamesController?.text = venueProvider.gamesCom.toString();
    TextEditingController? parkingController;
    parkingController?.text = venueProvider.parkingCom.toString();
    TextEditingController? accessibilityController;
    accessibilityController?.text = venueProvider.accessCom.toString();

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
                      child: Text("SETTING",
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
                            value: venueProvider.indoor,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30, //this increase the size
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              venueProvider.selectedIndoor = newValue!;
                            },
                            items: settingList
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
                            value: venueProvider.outdoor,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30, //this inicrease the size
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              venueProvider.selectedOutdoor = newValue!;
                            },
                            items: settingList
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
                            value: venueProvider.rooftop,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              venueProvider.selectedRooftop = newValue!;
                            },
                            items: settingList
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
                        controller: settingController,
                        minLines: 1,
                        maxLines: 10,
                        style: themeProvider.getTheme.textTheme.bodyText1,
                        textAlignVertical: TextAlignVertical.top,
                        onSubmitted: (String value) =>
                            venueProvider.changeSettingCom = value,
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
                            value: venueProvider.breakfast,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              venueProvider.selectedBreakfast = newValue!;
                            },
                            items: foodList
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
                            value: venueProvider.lunch,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              venueProvider.selectedLunch = newValue!;
                            },
                            items: foodList
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
                            value: venueProvider.dinner,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              venueProvider.selectedDinner = newValue!;
                            },
                            items: foodList
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
                            value: venueProvider.late,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            elevation: 16,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            underline: Container(),
                            onChanged: (String? newValue) {
                              venueProvider.selectedLate = newValue!;
                            },
                            items: foodList
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
                        onSubmitted: (String value) =>
                            venueProvider.changeFoodCom = value,
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
                              value: venueProvider.wifi,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedWifi = newValue!;
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
                          onSubmitted: (String value) =>
                              venueProvider.changePassword = value,
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
                          onSubmitted: (String value) =>
                              venueProvider.changeWifiCom = value,
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
                              value: venueProvider.live,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedLive = newValue!;
                              },
                              items: entertainmentList
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
                              value: venueProvider.dj,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedDj = newValue!;
                              },
                              items: entertainmentList
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
                              value: venueProvider.recorded,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedRecorded = newValue!;
                              },
                              items: entertainmentList
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
                              value: venueProvider.karaoke,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedKaraoke = newValue!;
                              },
                              items: entertainmentList
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
                          controller: entertainmentController,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          minLines: 1,
                          maxLines: 10,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeEntertainmentCom = value,
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
                              value: venueProvider.gambling,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedGambling = newValue!;
                              },
                              items: gamesList.map<DropdownMenuItem<String>>(
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
                              value: venueProvider.board,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedBoard = newValue!;
                              },
                              items: gamesList.map<DropdownMenuItem<String>>(
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
                              "Video Games",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: venueProvider.video,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedVideo = newValue!;
                              },
                              items: gamesList.map<DropdownMenuItem<String>>(
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
                              value: venueProvider.pub,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedPub = newValue!;
                              },
                              items: gamesList.map<DropdownMenuItem<String>>(
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
                          onSubmitted: (String value) =>
                              venueProvider.changeGamesCom = value,
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
                              value: venueProvider.parking,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedParking = newValue!;
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
                          onSubmitted: (String value) =>
                              venueProvider.changeParkingCom = value,
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
                        child: Text("ACCESSIBILITY",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "disabled facilities?",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              maxLines: 2,
                              softWrap: true,
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: venueProvider.access,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30,
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedAccess = newValue!;
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
                          onSubmitted: (String value) =>
                              venueProvider.changeParkingCom = value,
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
