import 'package:bzoozle/Lists/detail_pages_list.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Widgets/detailScrollButton.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class VenueDetailScreen extends StatefulWidget {
  static const String routeName = '/detail';

  @override
  _VenueDetailScreenState createState() => _VenueDetailScreenState();
}

class _VenueDetailScreenState extends State<VenueDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final venue = ModalRoute.of(context)!.settings.arguments as Venue;
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
                "${venue.venueName}",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: <Color>[
                        Colors.orange[800]!,
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
          ScrollButtonList(),
          VenueDetailList(),
        ],
      ),
    );
  }
}

class ScrollButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: Container(
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
    );
  }
}

class VenueDetailList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        // shrinkWrap: true,
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${randomList[index]}"),
              ),
            ),
          );
        },
        childCount: randomList.length,
      ),
    );
    //   ],
    // );
  }
}
