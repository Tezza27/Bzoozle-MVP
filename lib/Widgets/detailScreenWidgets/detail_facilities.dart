import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailFacilities extends StatelessWidget {
  const DetailFacilities({Key? key}) : super(key: key);

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
                  child: Text("FACILITIES",
                      style: themeProvider.getTheme.textTheme.headline1),
                ),
              ),
              Card(
                  child: Column(
                children: <Widget>[
                  Text("INDOOR/OUTDOOR",
                      style: themeProvider.getTheme.textTheme.headline2),
                  Row(
                    children: const <Widget>[],
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
