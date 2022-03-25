import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';
import 'package:provider/provider.dart';

class DetailRants extends StatelessWidget {
  const DetailRants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 80.0,
          width: double.infinity,
          child: Neon(
            text: "RANTS & RAVES",
            color: Colors.lightBlue,
            fontSize: 30, //mySize,
            font: NeonFont.Monoton,
            flickeringText: true,
            flickeringLetters: null,
            blurRadius: 8000.0,
            glowing: true,
            //glowingDuration: const Duration(seconds: 2),
            //textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Card(
            color: Colors.deepOrange[500],
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Text("First name"),
                        Text("Surname"),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text("Title"),
                          Text("Category"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const <Widget>[
                          Text("Date"),
                          Text("Time"),
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
                  child: SizedBox(
                    height: 120.0,
                    width: double.infinity,
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Text("Content Here")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Row(
                    children: <Widget>[
                      const Spacer(flex: 1),
                      Column(
                        children: <Widget>[
                          const Text("#"),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/cross_double.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 1),
                      Column(
                        children: <Widget>[
                          const Text("#"),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/cross_single.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 1),
                      Column(
                        children: <Widget>[
                          const Text("#"),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/tick_single.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 1),
                      Column(
                        children: <Widget>[
                          const Text("#"),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/tick_double.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 8),
                      Column(
                        children: <Widget>[
                          const Text("#"),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/tick_single.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 1),
                      Column(
                        children: <Widget>[
                          const Text("#"),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/tick_double.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 1),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
