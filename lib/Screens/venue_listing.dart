import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bzoozle/Widgets/listingScreenWidgets/list_card.dart';
import 'package:provider/provider.dart';

class ListingScreen extends StatefulWidget {
  const ListingScreen({Key? key}) : super(key: key);
  final String title = "BZOOZLE";
  static const String routeName = '/listing';

  @override
  _ListingScreenState createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true),
      body: StreamBuilder<QuerySnapshot>(
        stream: venueProvider.streamVenuesList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var venueRawData = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                    child: Column(
                  children: [
                    const CircularProgressIndicator(),
                    Text("No Connection - ${snapshot.connectionState}"),
                  ],
                ));
              case ConnectionState.waiting:
                return Center(
                    child: Column(
                  children: [
                    const CircularProgressIndicator(),
                    Text("No Connection - ${snapshot.connectionState}"),
                  ],
                ));
              case ConnectionState.done:
                return Center(
                    child: Column(
                  children: [
                    const CircularProgressIndicator(),
                    Text("No Connection - ${snapshot.connectionState}"),
                  ],
                ));
              default:
                return venueRawData!.size > 0
                    ? ListView.builder(
                        itemCount: venueRawData.size,
                        itemBuilder: (context, index) {
                          Venue venueObject =
                              Venue.fromSnapshot(venueRawData.docs[index]);

                          return listCard(context, venueObject);
                        })
                    : const Center(child: Text('No data available'));
            }
          } else {
            return Center(
                child: Column(
              children: [
                const CircularProgressIndicator(),
                Text("No Connection - ${snapshot.connectionState}"),
              ],
            ));
          }
        },
      ),
    );
  }
}
