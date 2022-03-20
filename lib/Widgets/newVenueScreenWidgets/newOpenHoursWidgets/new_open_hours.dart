import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newOpenHoursWidgets/time_set.dart';
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
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 2.0, left: 8.0, right: 8.0),
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Expanded(
                          flex: 6,
                          child: Text(
                            "MONDAY",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime0!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        const Text(
                          " - ",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime0!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 2),
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
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Expanded(
                          flex: 6,
                          child: Text(
                            "TUESDAY",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime1!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime1!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 2),
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
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Expanded(
                          flex: 6,
                          child: Text(
                            "WEDNESDAY",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime2!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime2!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 2),
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
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Expanded(
                          flex: 6,
                          child: Text(
                            "THURSDAY",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime3!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime3!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 2),
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
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Expanded(
                          flex: 6,
                          child: Text(
                            "FRIDAY",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime4!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        Text(
                          " - ",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime4!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 2),
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
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Expanded(
                          flex: 6,
                          child: Text(
                            "SATURDAY",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime5!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        const Text(
                          " - ",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime5!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 2),
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
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Expanded(
                          flex: 6,
                          child: Text(
                            "SUNDAY",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.openTime6!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 1),
                        const Text(
                          " - ",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(
                            venueProvider.closeTime6!,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(flex: 2),
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
                        child: const Text(
                          "Set Times",
                          style: TextStyle(color: Colors.orange),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          padding: const EdgeInsets.all(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
