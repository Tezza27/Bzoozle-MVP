// ignore_for_file: prefer_const_constructors

import 'package:bzoozle/Lists/yes_no_list.dart';
import 'package:bzoozle/Providers/confirmation_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/circular_avatar.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/color_indicator.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPricing extends StatelessWidget {
  const DetailPricing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final confirmProvider = Provider.of<ConfirmationProvider>(context);
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
                              venueName: venueProvider.venueName,
                              imageUrl: confirmProvider.feesCImage != null
                                  ? confirmProvider.feesCImage!
                                  : confirmProvider.feesUImage != null
                                      ? confirmProvider.feesUImage!
                                      : "",
                              backColor: colorIndicator(
                                  updateDateText: confirmProvider.feesUDate,
                                  confirmDateText: confirmProvider.feesCDate),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(venueProvider.fees ?? '?',
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.feesCom ?? '',
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
                              venueName: venueProvider.venueName,
                              imageUrl: confirmProvider.priceCImage != null
                                  ? confirmProvider.priceCImage!
                                  : confirmProvider.priceUImage != null
                                      ? confirmProvider.priceUImage!
                                      : "",
                              backColor: colorIndicator(
                                  updateDateText: confirmProvider.priceUDate,
                                  confirmDateText: confirmProvider.priceCDate),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: venueProvider.priceGuide != null
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: '\$',
                                        style: themeProvider
                                            .getTheme.textTheme.subtitle1,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '\$',
                                            style:
                                                venueProvider.priceGuide! >= 1
                                                    ? themeProvider.getTheme
                                                        .textTheme.subtitle1
                                                    : themeProvider.getTheme
                                                        .textTheme.subtitle2,
                                          ),
                                          TextSpan(
                                            text: '\$',
                                            style:
                                                venueProvider.priceGuide! >= 2
                                                    ? themeProvider.getTheme
                                                        .textTheme.subtitle1
                                                    : themeProvider.getTheme
                                                        .textTheme.subtitle2,
                                          ),
                                          TextSpan(
                                            text: '\$',
                                            style:
                                                venueProvider.priceGuide! >= 3
                                                    ? themeProvider.getTheme
                                                        .textTheme.subtitle1
                                                    : themeProvider.getTheme
                                                        .textTheme.subtitle2,
                                          ),
                                          TextSpan(
                                            text: '\$',
                                            style:
                                                venueProvider.priceGuide! >= 4
                                                    ? themeProvider.getTheme
                                                        .textTheme.subtitle1
                                                    : themeProvider.getTheme
                                                        .textTheme.subtitle2,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Text(priceList[venueProvider.priceGuide!],
                                        style: themeProvider
                                            .getTheme.textTheme.bodyText1),
                                  ],
                                )
                              : Container()),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Text(
                          venueProvider.priceCom ?? '',
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
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
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
                                      child: Text(
                                          venueProvider.beerDom != null
                                              ? "\$${venueProvider.beerDom!}"
                                              : '?',
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
                                            venueProvider.beerDomCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Beer - Domestic Bottle",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .beerDomCImage !=
                                                  null
                                              ? confirmProvider.beerDomCImage!
                                              : confirmProvider.beerDomUImage !=
                                                      null
                                                  ? confirmProvider
                                                      .beerDomUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText:
                                                  confirmProvider.beerDomUDate,
                                              confirmDateText:
                                                  confirmProvider.beerDomCDate),
                                        ),
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
                                      child: Text(
                                          venueProvider.beerImp != null
                                              ? "\$${venueProvider.beerImp!}"
                                              : '?',
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
                                            venueProvider.beerImpCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Beer - Import Bottle",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .beerImpCImage !=
                                                  null
                                              ? confirmProvider.beerImpCImage!
                                              : confirmProvider.beerImpUImage !=
                                                      null
                                                  ? confirmProvider
                                                      .beerImpUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText:
                                                  confirmProvider.beerImpUDate,
                                              confirmDateText:
                                                  confirmProvider.beerImpCDate),
                                        ),
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
                                      child: Text(
                                          venueProvider.beerDraft != null
                                              ? "\$${venueProvider.beerDraft!}"
                                              : '?',
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
                                            venueProvider.beerDraftCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Beer - Draft",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .beerDraftCImage !=
                                                  null
                                              ? confirmProvider.beerDraftCImage!
                                              : confirmProvider
                                                          .beerDraftUImage !=
                                                      null
                                                  ? confirmProvider
                                                      .beerDraftUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText: confirmProvider
                                                  .beerDraftUDate,
                                              confirmDateText: confirmProvider
                                                  .beerDraftCDate),
                                        ),
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
                                      child: Text(
                                          venueProvider.well != null
                                              ? "\$${venueProvider.well!}"
                                              : '?',
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
                                        child: Text(venueProvider.wellCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Well drink with mixer",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .wellCImage !=
                                                  null
                                              ? confirmProvider.wellCImage!
                                              : confirmProvider.wellUImage !=
                                                      null
                                                  ? confirmProvider.wellUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText:
                                                  confirmProvider.wellUDate,
                                              confirmDateText:
                                                  confirmProvider.wellCDate),
                                        ),
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
                                      child: Text(
                                          venueProvider.call != null
                                              ? "\$${venueProvider.call!}"
                                              : '?',
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
                                        child: Text(venueProvider.callCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Call drink with mixer",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .callCImage !=
                                                  null
                                              ? confirmProvider.callCImage!
                                              : confirmProvider.callUImage !=
                                                      null
                                                  ? confirmProvider.callUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText:
                                                  confirmProvider.callUDate,
                                              confirmDateText:
                                                  confirmProvider.callCDate),
                                        ),
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
                                      child: Text(
                                          venueProvider.cocktail != null
                                              ? "\$${venueProvider.cocktail!}"
                                              : '?',
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
                                            venueProvider.cocktailCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Cocktail",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .cocktailCImage !=
                                                  null
                                              ? confirmProvider.cocktailCImage!
                                              : confirmProvider
                                                          .cocktailUImage !=
                                                      null
                                                  ? confirmProvider
                                                      .cocktailUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText:
                                                  confirmProvider.cocktailUDate,
                                              confirmDateText: confirmProvider
                                                  .cocktailCDate),
                                        ),
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
                                      child: Text(
                                          venueProvider.wine != null
                                              ? "\$${venueProvider.wine!}"
                                              : '?',
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
                                        child: Text(venueProvider.wineCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Wine (small glass)",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .wineCImage !=
                                                  null
                                              ? confirmProvider.wineCImage!
                                              : confirmProvider.wineUImage !=
                                                      null
                                                  ? confirmProvider.wineUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText:
                                                  confirmProvider.wineUDate,
                                              confirmDateText:
                                                  confirmProvider.wineCDate),
                                        ),
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
                                      child: Text(
                                          venueProvider.bottle != null
                                              ? "\$${venueProvider.bottle!}"
                                              : '?',
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
                                            venueProvider.bottleCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Bottle Service (1 ltr)",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .bottleCImage !=
                                                  null
                                              ? confirmProvider.bottleCImage!
                                              : confirmProvider.bottleUImage !=
                                                      null
                                                  ? confirmProvider
                                                      .bottleUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText:
                                                  confirmProvider.bottleUDate,
                                              confirmDateText:
                                                  confirmProvider.bottleCDate),
                                        ),
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
                                      child: Text(
                                          venueProvider.bEntree != null
                                              ? "\$${venueProvider.bEntree!}"
                                              : '?',
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
                                            venueProvider.bEntreeCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Breakfast Entree",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .breakfastCImage !=
                                                  null
                                              ? confirmProvider.breakfastCImage!
                                              : confirmProvider
                                                          .breakfastUImage !=
                                                      null
                                                  ? confirmProvider
                                                      .breakfastUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText: confirmProvider
                                                  .breakfastUDate,
                                              confirmDateText: confirmProvider
                                                  .breakfastCDate),
                                        ),
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
                                      child: Text(
                                          venueProvider.lEntree != null
                                              ? "\$${venueProvider.lEntree!}"
                                              : '?',
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
                                            venueProvider.lEntreeCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Lunch Entree",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .lunchCImage !=
                                                  null
                                              ? confirmProvider.lunchCImage!
                                              : confirmProvider.lunchUImage !=
                                                      null
                                                  ? confirmProvider.lunchUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText:
                                                  confirmProvider.lunchUDate,
                                              confirmDateText:
                                                  confirmProvider.lunchCDate),
                                        ),
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
                                      child: Text(
                                          venueProvider.dEntree != null
                                              ? "\$${venueProvider.dEntree!}"
                                              : '?',
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
                                            venueProvider.dEntreeCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Dinner Entree",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .dinnerCImage !=
                                                  null
                                              ? confirmProvider.dinnerCImage!
                                              : confirmProvider.dinnerUImage !=
                                                      null
                                                  ? confirmProvider
                                                      .dinnerUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText:
                                                  confirmProvider.dinnerUDate,
                                              confirmDateText:
                                                  confirmProvider.dinnerCDate),
                                        ),
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
                                          venueProvider.lateEntree != null
                                              ? "\$${venueProvider.lateEntree!}"
                                              : '?',
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
                                            venueProvider.lateEntreeCom ?? '',
                                            style: themeProvider
                                                .getTheme.textTheme.bodyText2),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: circularAvatarInk(
                                          context: context,
                                          titleText: "Late Entree",
                                          venueName: venueProvider.venueName,
                                          imageUrl: confirmProvider
                                                      .lateCImage !=
                                                  null
                                              ? confirmProvider.lateCImage!
                                              : confirmProvider.lateUImage !=
                                                      null
                                                  ? confirmProvider.lateUImage!
                                                  : "",
                                          backColor: colorIndicator(
                                              updateDateText:
                                                  confirmProvider.lateUDate,
                                              confirmDateText:
                                                  confirmProvider.lateCDate),
                                        ),
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
