import 'package:bzoozle/Providers/confirmation_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/color_indicator.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/verify_panel.dart';
import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final confirmProvider = Provider.of<ConfirmationProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: [
                  SizedBox(
                    height: 40.0,
                    width: double.infinity,
                    child: Center(
                      child: Text("DESCRIPTION",
                          style: themeProvider.getTheme.textTheme.headline1),
                    ),
                  ),
                  Positioned(
                    top: 7.0,
                    right: 0.0,
                    child: confirmProvider.isLoading
                        ? CircularProgressIndicator(color: orange1)
                        : InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return verifyPanel(context, "Description",
                                      venueProvider.venueName);
                                },
                              );
                            },
                            splashColor: colorIndicator(
                                confirmDateText:
                                    confirmProvider.descriptionCDate,
                                updateDateText:
                                    confirmProvider.descriptionUDate),
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: colorIndicator(
                                  confirmDateText:
                                      confirmProvider.descriptionCDate,
                                  updateDateText:
                                      confirmProvider.descriptionUDate),
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: confirmProvider
                                            .descriptionCImage ==
                                        null
                                    ? confirmProvider.descriptionUImage == null
                                        ? const AssetImage(
                                            'assets/images/portrait_placeholder.png')
                                        : NetworkImage(confirmProvider
                                                .descriptionUImage!)
                                            as ImageProvider
                                    : NetworkImage(
                                        confirmProvider.descriptionCImage!),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Venue Type:",
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                  Text(
                    venueProvider.venueTheme! + " " + venueProvider.venueType!,
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 0.0),
                child: Center(
                  child: Text(
                    "What To Expect",
                    style: themeProvider.getTheme.textTheme.headline2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Center(
                  child: Text(
                    venueProvider.venueDescription!,
                    style: themeProvider.getTheme.textTheme.bodyText1,
                    textAlign: TextAlign.center,
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
