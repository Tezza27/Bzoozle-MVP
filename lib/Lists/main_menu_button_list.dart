import 'package:bzoozle/Models/main_menu_button.dart';
import 'package:bzoozle/Screens/new_venue.dart';
import 'package:bzoozle/Screens/venue_listing.dart';

List<MainMenuButton> mainMenuButtonList = [
  MainMenuButton(
      buttonTitle: "My Account", buttonRoute: ListingScreen.routeName),
  MainMenuButton(
      buttonTitle: "Find Venues", buttonRoute: ListingScreen.routeName),
  MainMenuButton(
      buttonTitle: "Add A Venue", buttonRoute: NewVenueScreen.routeName),
];
