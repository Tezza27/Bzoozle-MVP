import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:bzoozle/Widgets/detailScreenWidgets/detail_scroll_button_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VenueDetailScreen extends StatefulWidget {
  const VenueDetailScreen({Key? key}) : super(key: key);
  static const String routeName = '/detail';

  @override
  _VenueDetailScreenState createState() => _VenueDetailScreenState();
}

class _VenueDetailScreenState extends State<VenueDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedVenue = ModalRoute.of(context)!.settings.arguments as Venue;
    // final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    // final selectedVenue = Provider.of<VenueProvider>(context).findVenueById(selectedVenueId);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: themeProvider.getTheme.primaryColor,
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                selectedVenue.venueName,
                style: themeProvider.getTheme.textTheme.headline3,
              ),
              centerTitle: true,
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: <Color>[
                        themeProvider.getTheme.primaryColor,
                        Colors.transparent,
                      ]),
                ),
                child: Image.asset(
                  'assets/images/piano_bar_harrahs.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const DetailScrollButtonList(),
          const DetailContent(),
        ],
      ),
    );
  }
}
