import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPolicies extends StatelessWidget {
  const DetailPolicies({Key? key}) : super(key: key);

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
              SizedBox(
                height: 40.0,
                width: double.infinity,
                child: Center(
                  child: Text("POLICIES",
                      style: themeProvider.getTheme.textTheme.headline1),
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
