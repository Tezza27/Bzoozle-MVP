import 'package:bzoozle/Widgets/newVenueScreenWidgets/newScrollButtonList.dart';
import 'package:flutter/material.dart';

class NewVenueScreen extends StatefulWidget {
  static const String routeName = '/newVenue';

  @override
  _NewVenueScreenState createState() => _NewVenueScreenState();
}

class _NewVenueScreenState extends State<NewVenueScreen> {
  @override
  Widget build(BuildContext context) {
    // final venueProvider = Provider.of<VenueProvider>(context);
    // final pageNumberProvider = Provider.of<DetailPageProvider>(context);
    // final selectedVenue = Provider.of<VenueProvider>(context).findVenueById(selectedVenueId);
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Theme.of(context).accentColor,
                pinned: true,
                floating: true,
                snap: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "Add New Venue",
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                  centerTitle: true,
                  background: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: <Color>[
                            Theme.of(context).primaryColor,
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
              NewScrollButtonList(),
              NewContent(),
              // SliverFillRemaining(
              //   hasScrollBody: false,
              //   child: Align(
              //     alignment: Alignment.bottomCenter,
              //     child: Container(
              //       color: Theme.of(context).primaryColor,
              //       child: Padding(
              //         padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: <Widget>[
              //             ElevatedButton(
              //               onPressed: () {},
              //               child: Text("Cancel"),
              //             ),
              //             ElevatedButton(onPressed: () {}, child: Text("Save")),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Cancel"),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Save")),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}