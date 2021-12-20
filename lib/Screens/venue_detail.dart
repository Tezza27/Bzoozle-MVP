import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Widgets/DetailScreenWidgets/detailScrollButtonList.dart';
import 'package:flutter/material.dart';

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
    // final pageNumberProvider = Provider.of<DetailPageProvider>(context);
    // final selectedVenue = Provider.of<VenueProvider>(context).findVenueById(selectedVenueId);
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.orange[800],
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                selectedVenue.venueName,
                style: TextStyle(color: Colors.orange[800]!),
              ),
              centerTitle: true,
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: <Color>[
                        Colors.black,
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
          DetailScrollButtonList(),
          DetailContent(),
        ],
      ),
    );
  }
}
