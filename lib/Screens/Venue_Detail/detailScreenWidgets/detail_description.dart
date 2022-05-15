import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: [
                  SizedBox(
                    height: 40.0,
                    width: double.infinity,
                    child: Center(
                      child: Text("DESCRIPTION",
                          style: themeProvider.getTheme.textTheme.headline1),
                    ),
                  ),
                  Positioned(
                    top: 4.0,
                    right: 0.0,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: themeProvider.getTheme.primaryColor,
                      child: const CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage(
                            'assets/images/portrait_placeholder.png'),
                      ),
                    ),
                  ),
                ],
              ),
              // Neon(
              //   text: "DESCRIPTION",
              //   color: Colors.lightBlue,
              //   fontSize: 30, //mySize,
              //   font: NeonFont.Monoton,
              //   flickeringText: true,
              //   flickeringLetters: null,
              //   blurRadius: 8000.0,
              //   glowing: true,
              //   //glowingDuration: const Duration(seconds: 2),
              //   //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Venue Type:",
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                  Text(
                    venueProvider.venueTheme! + " " + venueProvider.venueType!,
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 0.0),
                child: Center(
                  child: Text(
                    "What To Expect",
                    style: themeProvider.getTheme.textTheme.headline2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Center(
                  child: Text(
                    venueProvider.venueDescription!,
                    style: themeProvider.getTheme.textTheme.bodyText1,
                    textAlign: TextAlign.center,
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
