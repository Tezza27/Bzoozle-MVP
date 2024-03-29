import 'package:bzoozle/Lists/host_buildings_list.dart';
import 'package:bzoozle/Models/venue.dart';
import 'package:bzoozle/Providers/confirmation_provider.dart';
import 'package:bzoozle/Providers/page_number_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/Venue_Listing/listingScreenWidgets/hh_time_builder.dart';
import 'package:bzoozle/Screens/Venue_Listing/listingScreenWidgets/open_time_builder.dart';
import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/venue_detail_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_glow/flutter_glow.dart';

class ListCard extends StatefulWidget {
  const ListCard({Key? key, required this.iD, required this.venue})
      : super(key: key);
  final String iD;
  final Venue venue;

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  // String? _imageUrl;
  void _loadVenue({BuildContext? context, String? iD, Venue? venue}) async {
    ConfirmationProvider confirmProvider =
        Provider.of<ConfirmationProvider>(context!, listen: false);
    final venueProvider = Provider.of<VenueProvider>(context, listen: false);

    try {
      setState(() {
        confirmProvider.changeIsLoading(true);
      });
      await confirmProvider.changeCurrentVenue(iD!);
      await venueProvider.loadVenue(iD, venue);
      setState(() {
        confirmProvider.changeIsLoading(false);
      });
    } catch (e) {
      print(e);
    }
  }

  // @override
  // void initState() {
  //   final myCacheManager = MyCacheManager();

  //   // Image path from Firebase Storage
  //   var imagePath = '$venueImagePath${widget.iD}.jpg';

  //   // This will try to find image in the cache first
  //   // If it can't find anything, it will download it from Firabase storage
  //   myCacheManager.cacheImage(imagePath).then((String imageUrl) {
  //     setState(() {
  //       // Get image url
  //       _imageUrl = imageUrl;
  //     });
  //   });

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    bool isFavourite = false;
    int hostIndex = widget.venue.venueHostBuilding != null
        ? hostList.indexWhere(
            (host) => host.hostName == widget.venue.venueHostBuilding)
        : 0;
    // final imageRef = FirebaseStorage.instance.refFromURL(venueImagePath + widget.iD + "jpg");

    Future<Widget> _getImage(BuildContext context, String imageName) async {
      Image image = Image.asset('assets/images/photo_coming_soon.png');
      await FireStorageService.loadImage(context, imageName).then((value) {
        image = Image.network(value.toString(), fit: BoxFit.cover);
      });
      return image;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: themeProvider.getTheme.cardColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: InkWell(
          splashColor: themeProvider.getTheme.splashColor,
          onTap: () async {
            _loadVenue(context: context, iD: widget.iD, venue: widget.venue);
            // await confirmProvider.changeCurrentVenue(widget.iD);
            // venueProvider.loadVenue(widget.iD, widget.venue);
            pageNumberProvider.changePageNumber(0);
            await Navigator.pushNamed(
              context,
              VenueDetailScreen.routeName,
            );
          },
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 250.0,
                    child: DecoratedBox(
                      position: DecorationPosition.foreground,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: <Color>[
                              themeProvider.getTheme.primaryColor,
                              Colors.transparent,
                            ]),
                      ),
                      child: FutureBuilder(
                          future: _getImage(context, widget.iD + '.jpg'),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                    ConnectionState.done &&
                                snapshot.hasData) {
                              return ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: snapshot.data as Image,
                              );
                            }
                            // if (snapshot.connectionState ==
                            //     ConnectionState.waiting) {
                            //   return ClipRRect(
                            //     borderRadius: const BorderRadius.only(
                            //       topLeft: Radius.circular(10),
                            //       topRight: Radius.circular(10),
                            //     ),
                            //     child: CircularProgressIndicator(
                            //       color: orange1,
                            //     ),
                            //   );
                            // }
                            return ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset(
                                'assets/images/photo_coming_soon.png',
                                fit: BoxFit.cover,
                              ),
                            );
                          }),
                      // CachedNetworkImage(
                      //     imageUrl: widget.iD,
                      //     placeholder: (context, url) =>
                      //         const CircularProgressIndicator(),
                      //     errorWidget: (context, url, error) =>
                      //         const Icon(Icons.error),
                      //     fit: BoxFit.cover),

                      //  _imageUrl != null
                      //     ? CachedNetworkImage(
                      //         imageUrl: _imageUrl!,
                      //         placeholder: (context, url) =>
                      //             const CircularProgressIndicator(),
                      //         errorWidget: (context, url, error) =>
                      //             const Icon(Icons.error),
                      //       )
                      //     : const CircularProgressIndicator(),

                      // FutureBuilder(
                      //     future: FirebaseStorage.instance
                      //         .ref()
                      //         .child("venueImages/" + widget.iD + ".jpg")
                      //         .getDownloadURL(),
                      //     builder: (context, snapshot) {
                      //       if (snapshot.connectionState ==
                      //               ConnectionState.done &&
                      //           snapshot.hasData) {
                      //         return Image(
                      //             image:
                      //                 NetworkImage(snapshot.data.toString()),
                      //             fit: BoxFit.cover);
                      //       } else {
                      //         return Image.asset(
                      //           'assets/images/photo_coming_soon.png',
                      //           fit: BoxFit.cover,
                      //         );
                      //       }
                      //     }),
                    ),
                  ),
                  Positioned(
                    bottom: 4.0,
                    left: 0.0,
                    right: 0.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          widget.venue.venueName,
                          style: themeProvider.getTheme.textTheme.headline3,
                        ),
                        Text(
                          widget.venue.venueHostBuilding != null
                              ? "${widget.venue.venueHostBuilding}"
                              : "${widget.venue.venueStreet}",
                          style: themeProvider.getTheme.textTheme.headline3!
                              .copyWith(fontSize: 18.0),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 8.0,
                    right: 0.0,
                    child: GlowButton(
                      onPressed: () {
                        setState(() => isFavourite == !isFavourite);
                      } //TODO save/remove venue ID to/from favorites list in phone memory
                      ,
                      color: const Color.fromARGB(75, 0, 0, 0),
                      splashColor: orange1,
                      padding: EdgeInsets.zero,
                      width: 60.0,
                      borderRadius: BorderRadius.circular(45),
                      child: GlowIcon(
                        (isFavourite == true)
                            ? Icons.favorite
                            : Icons
                                .favorite_border, //TODO change icon if venue ID is on favorites list in phone memory
                        color: orange1,
                        glowColor: orange1,
                        size: 30,
                        blurRadius: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, bottom: 0.0, left: 4.0, right: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.venue.venueTheme!.isNotEmpty &&
                              widget.venue.venueType!.isNotEmpty
                          ? widget.venue.venueTheme! +
                              " " +
                              widget.venue.venueType!
                          : "",
                      style: themeProvider.getTheme.textTheme.headline4,
                    ),
                    const Spacer(),
                    Text(
                      widget.venue.venueHostBuilding != null
                          ? hostList[hostIndex].area!
                          : widget.venue.venueArea!,
                      style: themeProvider.getTheme.textTheme.headline4,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0.0, bottom: 0.0, left: 4.0, right: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    OpenTimeStatus(venue: widget.venue),
                    const Spacer(),
                    widget.venue.priceGuide != null
                        ? RichText(
                            text: TextSpan(
                              text: '\$',
                              style: themeProvider.getTheme.textTheme.subtitle1,
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\$',
                                  style: widget.venue.priceGuide! >= 1
                                      ? themeProvider
                                          .getTheme.textTheme.subtitle1
                                      : themeProvider
                                          .getTheme.textTheme.subtitle2,
                                ),
                                TextSpan(
                                  text: '\$',
                                  style: widget.venue.priceGuide! >= 2
                                      ? themeProvider
                                          .getTheme.textTheme.subtitle1
                                      : themeProvider
                                          .getTheme.textTheme.subtitle2,
                                ),
                                TextSpan(
                                  text: '\$',
                                  style: widget.venue.priceGuide! >= 3
                                      ? themeProvider
                                          .getTheme.textTheme.subtitle1
                                      : themeProvider
                                          .getTheme.textTheme.subtitle2,
                                ),
                                TextSpan(
                                  text: '\$',
                                  style: widget.venue.priceGuide! >= 4
                                      ? themeProvider
                                          .getTheme.textTheme.subtitle1
                                      : themeProvider
                                          .getTheme.textTheme.subtitle2,
                                ),
                              ],
                            ),
                          )
                        : const Text(""),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0.0, bottom: 4.0, left: 4.0, right: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    (widget.venue.happyHours != null &&
                            widget.venue.happyHours!.isNotEmpty)
                        ? HHTimeStatus(venue: widget.venue)
                        : Text("No Happy Hours",
                            style: themeProvider.getTheme.textTheme.bodyText1),
                    const Spacer(),
                    Row(
                      children: [
                        Icon(Icons.directions_walk, size: 20.0, color: orange1),
                        Text(
                          "295m",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 8.0, right: 28.0),
                child: Text(
                  widget.venue.venueDescription ?? '',
                  style: themeProvider.getTheme.textTheme.bodyText1,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FireStorageService extends ChangeNotifier {
  FireStorageService();
  static Future<dynamic> loadImage(BuildContext context, String image) async {
    return await FirebaseStorage.instance
        .ref()
        .child('venueImages/' + image)
        .getDownloadURL();
  }
}
