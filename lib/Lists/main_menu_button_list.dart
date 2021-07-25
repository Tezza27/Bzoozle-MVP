import 'package:bzoozle/Models/mainMenuButton.dart';
import 'package:bzoozle/Screens/newVenue.dart';
import 'package:bzoozle/Screens/venueListing.dart';

List<MainMenuButton> mainMenuButtonList = [
  MainMenuButton(
      buttonTitle: "My Account", buttonRoute: ListingScreen.routeName),
  MainMenuButton(
      buttonTitle: "Find Venues", buttonRoute: ListingScreen.routeName),
  MainMenuButton(
      buttonTitle: "Add A Venue", buttonRoute: NewVenueScreen.routeName),
];
