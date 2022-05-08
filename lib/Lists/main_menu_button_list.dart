import 'package:bzoozle/Models/main_menu_button.dart';
import 'package:bzoozle/Screens/new_venue.dart';
import 'package:bzoozle/Screens/venue_listing.dart';
import 'package:bzoozle/Settings/color_pallet.dart';

import '../Screens/contact_screen.dart';
import '../Settings/color_experiments.dart';

List<MainMenuButton> mainMenuButtonList = [
  MainMenuButton(
      buttonTitle: "My Account", buttonRoute: ListingScreen.routeName),
  MainMenuButton(
      buttonTitle: "Find Venues", buttonRoute: ListingScreen.routeName),
  MainMenuButton(
      buttonTitle: "Add A Venue", buttonRoute: NewVenueScreen.routeName),
  MainMenuButton(
      buttonTitle: "Colour Experiment",
      buttonRoute: ColorExperimentScreen.routeName),
  MainMenuButton(
      buttonTitle: "Colour Pallette", buttonRoute: ColorPallet.routeName),
  MainMenuButton(
      buttonTitle: "Contact Bzoozle", buttonRoute: ContactScreen.routeName),
];
