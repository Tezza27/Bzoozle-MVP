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
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final confirmProvider =
        Provider.of<ConfirmationProvider>(context, listen: false);
    bool favourite = false;
    int hostIndex = widget.venue.venueHostBuilding != null
        ? hostList.indexWhere(
            (host) => host.hostName == widget.venue.venueHostBuilding)
        : 0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: themeProvider.getTheme.cardColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: InkWell(
          splashColor: themeProvider.getTheme.splashColor,
          onTap: () {
            pageNumberProvider.changePageNumber(0);
            Navigator.pushNamed(context, VenueDetailScreen.routeName,
                arguments: widget.venue);
            venueProvider.loadVenue(widget.iD, widget.venue);
            confirmProvider.changeCurrentVenue(widget.iD);
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: (widget.venue.venueImage != "" &&
                                widget.venue.venueImage != null)
                            ? Image(
                                image: NetworkImage(widget.venue.venueImage!),
                                fit: BoxFit.cover)
                            : Image.asset(
                                'assets/images/photo_coming_soon.png',
                                fit: BoxFit.cover,
                              ),
                      ),
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
                        favourite
                            ? setState(() => favourite = false)
                            : setState(() => favourite = true);
                      }

                      //TODO save/remove venue ID to/from favorites list in phone memory
                      ,
                      color: const Color.fromARGB(75, 0, 0, 0),
                      splashColor: orange1,
                      padding: EdgeInsets.zero,
                      width: 60.0,
                      borderRadius: BorderRadius.circular(45),
                      child: GlowIcon(
                        favourite
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
                    // TODO calculate today's opening times
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
