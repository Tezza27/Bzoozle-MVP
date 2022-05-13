import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/times_card_widgets/open_times_card.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailOpenHours extends StatelessWidget {
  const DetailOpenHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: SizedBox(
                  height: 40.0,
                  width: double.infinity,
                  child: Center(
                    child: Text("OPENING HOURS",
                        style: themeProvider.getTheme.textTheme.headline1),
                  ),
                ),
              ),
              openTimeCard(context, "MONDAY", venueProvider.openTime0!,
                  venueProvider.closeTime0!),
              openTimeCard(context, "TUESDAY", venueProvider.openTime1!,
                  venueProvider.closeTime1!),
              openTimeCard(context, "WEDNESDAY", venueProvider.openTime2!,
                  venueProvider.closeTime2!),
              openTimeCard(context, "THURSDAY", venueProvider.openTime3!,
                  venueProvider.closeTime3!),
              openTimeCard(context, "FRIDAY", venueProvider.openTime4!,
                  venueProvider.closeTime4!),
              openTimeCard(context, "SATURDAY", venueProvider.openTime5!,
                  venueProvider.closeTime5!),
              openTimeCard(context, "SUNDAY", venueProvider.openTime6!,
                  venueProvider.closeTime6!),
            ],
          ),
        ),
      ),
    );
  }
}
