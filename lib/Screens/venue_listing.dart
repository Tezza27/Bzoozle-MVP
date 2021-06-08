import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/edit_venue.dart';
import 'package:flutter/material.dart';
import 'package:bzoozle/Widgets/listCard.dart';
import 'package:provider/provider.dart';

class ListingScreen extends StatefulWidget {
  final String title = "Firestore Experiments";
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
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add, size: 30.0),
            onPressed: () {
              Navigator.pushNamed(context, EditVenueScreen.routeName);
            },
          )
        ],
      ),
      body: Container(
        child: StreamBuilder<List<Venue>>(
          stream: venueProvider.venues,
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
                // case ConnectionState.active:
                //   return Center(
                //       child: Column(
                //     children: [
                //       CircularProgressIndicator(),
                //       Text("No Connection - ${snapshot.connectionState}"),
                //     ],
                //   ));
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
                            return listCard(snapshot.data![index]);
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, EditVenueScreen.routeName);
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
