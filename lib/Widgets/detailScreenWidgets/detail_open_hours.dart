import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailOpenHours extends StatelessWidget {
  const DetailOpenHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
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
                  color: Theme.of(context).splashColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 40.0,
                      ),
                      Expanded(
                        flex: 6,
                        child: Text("MONDAY",
                            style: TextStyle(
                                color: Theme.of(context).splashColor)),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.openTime0!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.closeTime0!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 40.0,
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "TUESDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.openTime1!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.closeTime1!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 40.0,
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "WEDNESDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.openTime2!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.closeTime2!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 40.0,
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "THURSDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.openTime3!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.closeTime3!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 40.0,
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "FRIDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.openTime4!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.closeTime4!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 40.0,
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "SATURDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.openTime5!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.closeTime5!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 40.0,
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                          "SUNDAY",
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.openTime6!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(flex: 1),
                      Text(
                        " - ",
                        style: TextStyle(color: Theme.of(context).splashColor),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(flex: 1),
                      Expanded(
                        flex: 4,
                        child: Text(
                          venueProvider.closeTime6!,
                          style:
                              TextStyle(color: Theme.of(context).splashColor),
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
                      onPressed: () {},
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
    );
  }
}
