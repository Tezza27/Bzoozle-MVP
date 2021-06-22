import 'package:bzoozle/Lists/detail_pages_list.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Widgets/detailScrollButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VenueDetailScreen extends StatefulWidget {
  static const String routeName = '/detail';

  @override
  _VenueDetailScreenState createState() => _VenueDetailScreenState();
}

class _VenueDetailScreenState extends State<VenueDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "${venueProvider.venueName}",
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Center(
                child: Text("${venueProvider.venueName}",
                    style: TextStyle(color: Colors.white))),
          ),
          Container(
            height: 30,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: detailPageList.length,
                itemBuilder: (context, index) {
                  return detailScrollButton(
                      index: index, buttonText: detailPageList[index]);
                }),
          ),
        ],
      ),
    );
  }
}
