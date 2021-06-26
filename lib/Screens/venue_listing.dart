import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Providers/venueProvider.dart';
import 'package:flutter/material.dart';
import 'package:bzoozle/Widgets/listingScreenWidgets/listCard.dart';
import 'package:provider/provider.dart';

class ListingScreen extends StatefulWidget {
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
      appBar: AppBar(
          backgroundColor: Colors.orange[800],
          title: Text(widget.title),
          centerTitle: true),
      body: Container(
        child: StreamBuilder<List<Venue>>(
          stream: venueProvider.streamVenuesList,
          initialData: [],
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(
                      child: Column(
                    children: [
                      CircularProgressIndicator(),
                      Text("No Connection - ${snapshot.connectionState}"),
                    ],
                  ));
                case ConnectionState.waiting:
                  return Center(
                      child: Column(
                    children: [
                      CircularProgressIndicator(),
                      Text("No Connection - ${snapshot.connectionState}"),
                    ],
                  ));
                case ConnectionState.done:
                  return Center(
                      child: Column(
                    children: [
                      CircularProgressIndicator(),
                      Text("No Connection - ${snapshot.connectionState}"),
                    ],
                  ));
                default:
                  return snapshot.data!.length > 0
                      ? ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return listCard(context, snapshot.data![index]);
                          })
                      : Center(child: Text('No data available'));
              }
            } else {
              return Center(
                  child: Column(
                children: [
                  CircularProgressIndicator(),
                  Text("No Connection - ${snapshot.connectionState}"),
                ],
              ));
            }
          },
        ),
      ),
    );
  }
}
