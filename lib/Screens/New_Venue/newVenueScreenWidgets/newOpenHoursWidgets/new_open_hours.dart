import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/New_Venue/newVenueScreenWidgets/newOpenHoursWidgets/time_set.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NewOpenHoursScreen extends StatefulWidget {
  const NewOpenHoursScreen({Key? key}) : super(key: key);
  static const String routeName = '/openhours';

  @override
  _NewOpenHoursScreenState createState() => _NewOpenHoursScreenState();
}

class _NewOpenHoursScreenState extends State<NewOpenHoursScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 40.0,
                  width: double.infinity,
                  child: Center(
                    child: Text("OPENING HOURS",
                        style: themeProvider.getTheme.textTheme.headline1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 2.0, left: 8.0, right: 8.0),
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                          child: Checkbox(
                              value: venueProvider.chBoxMonday,
                              checkColor: themeProvider.getTheme.primaryColor,
                              activeColor: themeProvider.getTheme.splashColor,
                              onChanged: (bool? value) {
                                venueProvider.chBoxMonday = value!;
                              }),
                        ),
                        Expanded(
                          flex: 9,
                          child: Text(
                            "MONDAY",
                            style: themeProvider.getTheme.textTheme.headline4,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime0!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style: themeProvider.getTheme.textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime0!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                          child: Checkbox(
                              value: venueProvider.chBoxTuesday,
                              checkColor: themeProvider.getTheme.primaryColor,
                              activeColor: themeProvider.getTheme.splashColor,
                              onChanged: (bool? value) {
                                venueProvider.chBoxTuesday = value!;
                              }),
                        ),
                        Expanded(
                          flex: 9,
                          child: Text(
                            "TUESDAY",
                            style: themeProvider.getTheme.textTheme.headline4,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime1!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style: themeProvider.getTheme.textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime1!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                          child: Checkbox(
                              value: venueProvider.chBoxWednesday,
                              checkColor: themeProvider.getTheme.primaryColor,
                              activeColor: themeProvider.getTheme.splashColor,
                              onChanged: (bool? value) {
                                venueProvider.chBoxWednesday = value!;
                              }),
                        ),
                        Expanded(
                          flex: 9,
                          child: Text(
                            "WEDNESDAY",
                            style: themeProvider.getTheme.textTheme.headline4,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime2!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style: themeProvider.getTheme.textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime2!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                          child: Checkbox(
                              value: venueProvider.chBoxThursday,
                              checkColor: themeProvider.getTheme.primaryColor,
                              activeColor: themeProvider.getTheme.splashColor,
                              onChanged: (bool? value) {
                                venueProvider.chBoxThursday = value!;
                              }),
                        ),
                        Expanded(
                          flex: 9,
                          child: Text(
                            "THURSDAY",
                            style: themeProvider.getTheme.textTheme.headline4,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime3!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style: themeProvider.getTheme.textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime3!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                          child: Checkbox(
                              value: venueProvider.chBoxFriday,
                              checkColor: themeProvider.getTheme.primaryColor,
                              activeColor: themeProvider.getTheme.splashColor,
                              onChanged: (bool? value) {
                                venueProvider.chBoxFriday = value!;
                              }),
                        ),
                        Expanded(
                          flex: 9,
                          child: Text(
                            "FRIDAY",
                            style: themeProvider.getTheme.textTheme.headline4,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime4!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style: themeProvider.getTheme.textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime4!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                          child: Checkbox(
                              value: venueProvider.chBoxSaturday,
                              checkColor: themeProvider.getTheme.primaryColor,
                              activeColor: themeProvider.getTheme.splashColor,
                              onChanged: (bool? value) {
                                venueProvider.chBoxSaturday = value!;
                              }),
                        ),
                        Expanded(
                          flex: 9,
                          child: Text(
                            "SATURDAY",
                            style: themeProvider.getTheme.textTheme.headline4,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime5!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style: themeProvider.getTheme.textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime5!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                          child: Checkbox(
                              value: venueProvider.chBoxSunday,
                              checkColor: themeProvider.getTheme.primaryColor,
                              activeColor: themeProvider.getTheme.splashColor,
                              onChanged: (bool? value) {
                                venueProvider.chBoxSunday = value!;
                              }),
                        ),
                        Expanded(
                          flex: 9,
                          child: Text(
                            "SUNDAY",
                            style: themeProvider.getTheme.textTheme.headline4,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime6!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style: themeProvider.getTheme.textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime6!,
                            style: themeProvider.getTheme.textTheme.headline4,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Center(
                    child: SizedBox(
                      height: 40.0,
                      width: 100.0,
                      child: ElevatedButton(
                        onPressed: () {
                          venueProvider.generateTimeSetText();
                          if (venueProvider.countOpenTimeSetTrue > 0) {
                            Navigator.pushNamed(
                                context, TimeSetScreen.routeName);
                          } else {
                            Fluttertoast.showToast(
                                msg:
                                    "Please check the boxes of the days that you want to set the business hours for.",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                backgroundColor: Colors.white,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          }
                        },
                        child: Text(
                          "Set Times",
                          style: themeProvider.getTheme.textTheme.headline4,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: themeProvider.getTheme.primaryColor,
                          padding: const EdgeInsets.all(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 300.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
