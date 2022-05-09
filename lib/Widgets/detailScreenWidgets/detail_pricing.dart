// ignore_for_file: prefer_const_constructors

import 'package:bzoozle/Providers/venue_provider.dart';
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
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("ADDITIONAL FEES",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text("Yes",
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          "This is a comments box to expand upon the additional fees situation",
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
                        child: Text("PRICE INDICATOR",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text("Click on the chart to vote:",
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text("A bar chart will sit here",
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          "This is a comments box to expand upon the bar chart",
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
                        child: Text(
                            "These are the current lowest prices available within each product type (higher priced products will also be available):",
                            style: themeProvider.getTheme.textTheme.bodyText1),
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
                                      child: Text("\$10.00",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("\$11.00",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("\$8.00",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("\$12.00",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("\$16.00",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("\$18.00",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("\$14.00",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("\$250.00",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("Breakfast",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$10.99",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("Lunch",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$14.99",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("Dinner",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$18.99",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
                                      child: Text("Late Bites",
                                          style: themeProvider
                                              .getTheme.textTheme.bodyText1!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Text("\$12.99",
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
                                  child: Text(
                                      "Free text to give brands available at that price",
                                      style: themeProvider
                                          .getTheme.textTheme.bodyText2),
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
