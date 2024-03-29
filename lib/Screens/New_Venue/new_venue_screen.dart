import 'package:bzoozle/Providers/confirmation_provider.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Screens/New_Venue/newVenueScreenWidgets/new_scroll_button_list.dart';
import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewVenueScreen extends StatefulWidget {
  const NewVenueScreen({Key? key}) : super(key: key);
  static const String routeName = '/newVenue';

  @override
  _NewVenueScreenState createState() => _NewVenueScreenState();
}

class _NewVenueScreenState extends State<NewVenueScreen> {
  void _saveVenue({required BuildContext context}) async {
    final ConfirmationProvider confirmProvider =
        Provider.of<ConfirmationProvider>(context, listen: false);
    final venueProvider = Provider.of<VenueProvider>(context, listen: false);

    if (venueProvider.venueID != "" && venueProvider.venueID != null) {
      try {
        setState(() {
          venueProvider.changeIsLoading(true);
        });
        await venueProvider.updateVenue(venueProvider.venueID!);
        await confirmProvider.updateConfirmation();
        setState(() {
          venueProvider.changeIsLoading(false);
        });
      } catch (e) {
        print(e);
      }
    } else {
      try {
        setState(() {
          venueProvider.changeIsLoading(true);
        });
        await venueProvider.addVenue();
        await confirmProvider.updateConfirmation();
        setState(() {
          venueProvider.changeIsLoading(false);
        });
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      //backgroundColor: themeProvider.getTheme.primaryColor,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: themeProvider.getTheme.primaryColor,
                pinned: true,
                floating: true,
                snap: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    venueProvider.venueName != ""
                        ? "Edit ${venueProvider.venueName}"
                        : "Add New Venue",
                    style: themeProvider.getTheme.textTheme.headline3,
                  ),
                  centerTitle: true,
                  background: InkWell(
                    onTap: () {
                      venueProvider.uploadGalleryImage();
                    },
                    child: DecoratedBox(
                      position: DecorationPosition.foreground,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: <Color>[
                              themeProvider.getTheme.primaryColor,
                              Colors.transparent,
                            ]),
                      ),
                      child: venueProvider.isloading
                          ? CircularProgressIndicator(
                              color: orange1,
                            )
                          : fetchImage(),
                    ),
                  ),
                ),
              ),
              const NewScrollButtonList(),
              const NewContent(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: themeProvider.getTheme.primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        _saveVenue(context: context);
                        Navigator.pop(context);
                      },
                      child: const Text("Save"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  fetchImage() {
    final venueProvider = Provider.of<VenueProvider>(context);
    if (venueProvider.venueImage != "" && venueProvider.venueImage != null) {
      return Image(
          image: NetworkImage(venueProvider.venueImage!), fit: BoxFit.cover);
    } else if (venueProvider.imageFile != null) {
      return Image(
          image: FileImage(venueProvider.imageFile!), fit: BoxFit.cover);
    } else {
      return const Image(
          image: AssetImage('assets/images/temp_venue_image.png'),
          fit: BoxFit.cover);
    }
  }
}
