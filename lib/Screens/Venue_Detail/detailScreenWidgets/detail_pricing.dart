// ignore_for_file: prefer_const_constructors

import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/circular_avatar.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPricing extends StatelessWidget {
  const DetailPricing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 40.0,
                width: double.infinity,
                child: Center(
                  child: Text("PRICING",
                      style: themeProvider.getTheme.textTheme.headline1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: themeProvider.getTheme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text("ADDITIONAL FEES",
                                    style: themeProvider
                                        .getTheme.textTheme.headline2),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 4.0,
                            right: 4.0,
                            child: circularAvatarInk(
                                context: context,
                                titleText: "Additional Fees",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(venueProvider.fees!,
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.feesCom!,
                          maxLines: 10,
                          softWrap: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: themeProvider.getTheme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text("PRICE GUIDE",
                                    style: themeProvider
                                        .getTheme.textTheme.headline2),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 4.0,
                            right: 4.0,
                            child: circularAvatarInk(
                                context: context,
                                titleText: "Price Guide",
                                venueName: venueProvider.venueName),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(venueProvider.priceGuide!,
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.priceCom!,
                          maxLines: 10,
                          softWrap: true,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: themeProvider.getTheme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("PRICES FROM",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Center(
                          child: Text(
                              "These are the current lowest prices available, outside of happy hours, within each product type (including tax but excluding tips and any other fees):",
                              style:
                                  themeProvider.getTheme.textTheme.bodyText1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("DRINKS",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Beer - Domestic Bottle",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.beerDom!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.beerDomCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Beer - Domestic Bottle",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Beer - Import Bottle",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.beerImp!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.beerImpCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Beer - Import Bottle",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Beer - Draft",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.beerDraft!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.beerDraftCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Beer - Draft",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Well drink with mixer",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.well!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.wellCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Well drink with mixer",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Call drink with mixer",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.call!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.callCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Call drink with mixer",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Cocktail",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.cocktail!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.cocktailCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Cocktail",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Wine (small glass)",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.wine!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.wineCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Wine (small glass)",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Bottle Service (1 ltr)",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.bottle!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.bottleCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Bottle Service (1 ltr)",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("FOOD",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Breakfast Entree",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.bEntree!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.bEntreeCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Breakfast Entree",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Lunch Entree",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.lEntree!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.lEntreeCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Lunch Entree",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Dinner Entree",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$$venueProvider.dEntree!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(venueProvider.dEntreeCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Dinner Entree",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          color: themeProvider.getTheme.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Flexible(
                                      flex: 7,
                                      child: Text("Late Entree",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text(
                                          "\$$venueProvider.lateEntree!",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                            venueProvider.lateEntreeCom!,
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                            context: context,
                                            titleText: "Late Entree",
                                            venueName: venueProvider.venueName),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
