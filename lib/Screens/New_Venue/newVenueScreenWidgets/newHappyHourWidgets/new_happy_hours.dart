import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/New_Venue/newVenueScreenWidgets/newHappyHourWidgets/add_hh_session.dart';
import 'package:bzoozle/Screens/New_Venue/newVenueScreenWidgets/newHappyHourWidgets/happy_hour_card.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewHappyHoursScreen extends StatefulWidget {
  const NewHappyHoursScreen({Key? key}) : super(key: key);
  static const String routeName = '/happyhours';

  @override
  _NewHappyHoursScreenState createState() => _NewHappyHoursScreenState();
}

class _NewHappyHoursScreenState extends State<NewHappyHoursScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    TextEditingController? hhOfferController;
    hhOfferController?.text = venueProvider.hhOffer.toString();
    String openMessage1 = venueProvider.venueName.isEmpty
        ? "This venue"
        : venueProvider.venueName;
    String openMessage2;
    venueProvider.happyHours!.isNotEmpty
        ? openMessage2 = "ordinarily holds these happy hours weekly:"
        : openMessage2 =
            "has no happy hours that we know of.  If you know different, please add them here:";

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.0,
              width: double.infinity,
              child: Center(
                child: Text("HAPPY HOURS",
                    style: themeProvider.getTheme.textTheme.headline1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 0.0, left: 16.0, right: 16.0),
              child: Text(
                "$openMessage1 $openMessage2",
                style: themeProvider.getTheme.textTheme.bodyText1,
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: venueProvider.happyHours?.length,
                itemBuilder: (context, index) {
                  return happyHourCard(
                      context, venueProvider.happyHours![index]);
                }),
            venueProvider.happyHours!.isEmpty
                ? Container()
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    child: TextFormField(
                      controller: hhOfferController,
                      initialValue: venueProvider.hhOffer,
                      style: themeProvider.getTheme.textTheme.bodyText1,
                      minLines: 5,
                      maxLines: null,
                      onChanged: (String value) =>
                          venueProvider.changeHhOffer = value.trim(),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Happy Hour Offers'),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Center(
                child: SizedBox(
                  height: 40.0,
                  width: 120.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AddHHSessionScreen.routeName);
                    },
                    child: Text(
                      "Add Session",
                      style: themeProvider.getTheme.textTheme.bodyText1,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 500.0,
            ),
          ],
        ),
      ),
    );
  }
}
