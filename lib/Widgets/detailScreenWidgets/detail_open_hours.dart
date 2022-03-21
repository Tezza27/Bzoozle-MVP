import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Widgets/times_card_widgets/open_times_card.dart';
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
              const SizedBox(
                height: (20.0),
              ),
              openTimeCard(context, "MONDAY", venueProvider.openTime0!,
                  venueProvider.openTime0!),
              openTimeCard(context, "TUESDAY", venueProvider.openTime1!,
                  venueProvider.openTime1!),
              openTimeCard(context, "WEDNESDAY", venueProvider.openTime2!,
                  venueProvider.openTime2!),
              openTimeCard(context, "THURSDAY", venueProvider.openTime3!,
                  venueProvider.openTime3!),
              openTimeCard(context, "FRIDAY", venueProvider.openTime4!,
                  venueProvider.openTime4!),
              openTimeCard(context, "SATURDAY", venueProvider.openTime5!,
                  venueProvider.openTime5!),
              openTimeCard(context, "SUNDAY", venueProvider.openTime6!,
                  venueProvider.openTime6!),
            ],
          ),
        ),
      ),
    );
  }
}
