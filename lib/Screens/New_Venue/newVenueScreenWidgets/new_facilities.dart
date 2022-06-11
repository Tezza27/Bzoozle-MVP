import 'package:bzoozle/Lists/yes_no_list.dart';
import 'package:bzoozle/Providers/confirmation_provider.dart';
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
    final confirmProvider = Provider.of<ConfirmationProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
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
                                confirmProvider.changeSettingUpdate();
                              },
                              items: settingList.map<DropdownMenuItem<String>>(
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
                                confirmProvider.changeSettingUpdate();
                              },
                              items: settingList.map<DropdownMenuItem<String>>(
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
                                confirmProvider.changeSettingUpdate();
                              },
                              items: settingList.map<DropdownMenuItem<String>>(
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
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          keyboardType: TextInputType.multiline,
                          controller: settingController,
                          minLines: 1,
                          maxLines: 10,
                          initialValue: venueProvider.settingCom,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onChanged: (String value) {
                            venueProvider.changeSettingCom = value.trim();
                            confirmProvider.changeSettingUpdate();
                          },
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
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
                                confirmProvider.changeFoodUpdate();
                              },
                              items: foodList.map<DropdownMenuItem<String>>(
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
                                confirmProvider.changeFoodUpdate();
                              },
                              items: foodList.map<DropdownMenuItem<String>>(
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
                                confirmProvider.changeFoodUpdate();
                              },
                              items: foodList.map<DropdownMenuItem<String>>(
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
                                confirmProvider.changeFoodUpdate();
                              },
                              items: foodList.map<DropdownMenuItem<String>>(
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
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          keyboardType: TextInputType.multiline,
                          controller: foodController,
                          minLines: 1,
                          maxLines: 10,
                          initialValue: venueProvider.foodCom,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onChanged: (String value) {
                            venueProvider.changeFoodCom = value.trim();
                            confirmProvider.changeFoodUpdate();
                          },
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text("WIFI",
                              style:
                                  themeProvider.getTheme.textTheme.headline2),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2.0),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Is wifi available?",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.wifi,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedWifi = newValue!;
                                  confirmProvider.changeWifiUpdate();
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
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            keyboardType: TextInputType.text,
                            controller: passwordController,
                            initialValue: venueProvider.password,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            maxLines: 1,
                            onChanged: (String value) {
                              venueProvider.changePassword = value.trim();
                              confirmProvider.changeWifiUpdate();
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            keyboardType: TextInputType.multiline,
                            controller: wifiController,
                            initialValue: venueProvider.wifiCom,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            minLines: 1,
                            maxLines: 10,
                            textAlignVertical: TextAlignVertical.top,
                            onChanged: (String value) {
                              venueProvider.changeWifiCom = value.trim();
                              confirmProvider.changeWifiUpdate();
                            },
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text("ENTERTAINMENT",
                              style:
                                  themeProvider.getTheme.textTheme.headline2),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2.0),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Live entertainment",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.live,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedLive = newValue!;
                                  confirmProvider.changeEntertainmentUpdate();
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
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.dj,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedDj = newValue!;
                                  confirmProvider.changeEntertainmentUpdate();
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
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.recorded,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedRecorded = newValue!;
                                  confirmProvider.changeEntertainmentUpdate();
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
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.karaoke,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedKaraoke = newValue!;
                                  confirmProvider.changeEntertainmentUpdate();
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
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            keyboardType: TextInputType.multiline,
                            controller: entertainmentController,
                            initialValue: venueProvider.entertainmentCom,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            minLines: 1,
                            maxLines: 10,
                            textAlignVertical: TextAlignVertical.top,
                            onChanged: (String value) {
                              venueProvider.changeEntertainmentCom =
                                  value.trim();
                              confirmProvider.changeEntertainmentUpdate();
                            },
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text("GAMES",
                              style:
                                  themeProvider.getTheme.textTheme.headline2),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2.0),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Gambling",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.gambling,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedGambling = newValue!;
                                  confirmProvider.changeGamesUpdate();
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
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.board,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedBoard = newValue!;
                                  confirmProvider.changeGamesUpdate();
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
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.video,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedVideo = newValue!;
                                  confirmProvider.changeGamesUpdate();
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
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.pub,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedPub = newValue!;
                                  confirmProvider.changeGamesUpdate();
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
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            keyboardType: TextInputType.multiline,
                            controller: gamesController,
                            initialValue: venueProvider.gamesCom,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            minLines: 1,
                            maxLines: 10,
                            textAlignVertical: TextAlignVertical.top,
                            onChanged: (String value) {
                              venueProvider.changeGamesCom = value.trim();
                              confirmProvider.changeGamesUpdate();
                            },
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text("ONSITE PARKING",
                              style:
                                  themeProvider.getTheme.textTheme.headline2),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2.0),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Onsite parking?",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.parking,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedParking = newValue!;
                                  confirmProvider.changeParkingUpdate();
                                },
                                items: parkingList
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
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            keyboardType: TextInputType.multiline,
                            controller: parkingController,
                            initialValue: venueProvider.parkingCom,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            minLines: 1,
                            maxLines: 10,
                            textAlignVertical: TextAlignVertical.top,
                            onChanged: (String value) {
                              venueProvider.changeParkingCom = value.trim();
                              confirmProvider.changeParkingUpdate();
                            },
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text("ACCESSIBILITY",
                              style:
                                  themeProvider.getTheme.textTheme.headline2),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2.0),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "disabled facilities?",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                maxLines: 2,
                                softWrap: true,
                              ),
                              const Spacer(),
                              DropdownButton<String>(
                                value: venueProvider.access,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                elevation: 16,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  venueProvider.selectedAccess = newValue!;
                                  confirmProvider.changeAccessUpdate();
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
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            keyboardType: TextInputType.multiline,
                            controller: accessibilityController,
                            initialValue: venueProvider.accessCom,
                            style: themeProvider.getTheme.textTheme.bodyText1,
                            minLines: 1,
                            maxLines: 10,
                            textAlignVertical: TextAlignVertical.top,
                            onChanged: (String value) {
                              venueProvider.changeAccessCom = value.trim();
                              confirmProvider.changeAccessUpdate();
                            },
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
      ),
    );
  }
}
