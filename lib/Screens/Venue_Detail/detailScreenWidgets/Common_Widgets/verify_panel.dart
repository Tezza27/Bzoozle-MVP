import 'package:bzoozle/Providers/confirmation_provider.dart';
import 'package:bzoozle/Screens/New_Venue/new_venue_screen.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/circular_avatar.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/Common_Widgets/color_indicator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

AlertDialog verifyPanel(
    BuildContext context, String itemName, String venueName) {
  final confirmProvider = Provider.of<ConfirmationProvider>(context);
  String? confirmDateText;
  String? confirmNameText;
  String? confirmLocationText;
  String? confirmImageUrl;
  String? updateDateText;
  String? updateNameText;
  String? updateLocationText;
  String? updateImageUrl;
  switch (itemName) {
    case "Description":
      confirmDateText = confirmProvider.descriptionCDate ?? "";
      confirmNameText = confirmProvider.descriptionCName;
      confirmLocationText = confirmProvider.descriptionCLocation;
      confirmImageUrl = confirmProvider.descriptionCImage;
      updateDateText = confirmProvider.descriptionUDate ?? "";
      updateNameText = confirmProvider.descriptionUName;
      updateLocationText = confirmProvider.descriptionULocation;
      updateImageUrl = confirmProvider.descriptionUImage;

      break;
    case "Location":
      confirmDateText = confirmProvider.locationCDate ?? "";
      confirmNameText = confirmProvider.locationCName;
      confirmLocationText = confirmProvider.locationCLocation;
      confirmImageUrl = confirmProvider.locationCImage;
      updateDateText = confirmProvider.locationUDate ?? "";
      updateNameText = confirmProvider.locationUName;
      updateLocationText = confirmProvider.locationULocation;
      updateImageUrl = confirmProvider.locationUImage;

      break;
    case "Opening Hours":
      confirmDateText = confirmProvider.openHoursCDate ?? "";
      confirmNameText = confirmProvider.openHoursCName;
      confirmLocationText = confirmProvider.openHoursCLocation;
      confirmImageUrl = confirmProvider.openHoursCImage;
      updateDateText = confirmProvider.openHoursUDate ?? "";
      updateNameText = confirmProvider.openHoursUName;
      updateLocationText = confirmProvider.openHoursULocation;
      updateImageUrl = confirmProvider.openHoursUImage;

      break;
    case "Setting":
      confirmDateText = confirmProvider.settingCDate ?? "";
      confirmNameText = confirmProvider.settingCName;
      confirmLocationText = confirmProvider.settingCLocation;
      confirmImageUrl = confirmProvider.settingCImage;
      updateDateText = confirmProvider.settingUDate ?? "";
      updateNameText = confirmProvider.settingUName;
      updateLocationText = confirmProvider.settingULocation;
      updateImageUrl = confirmProvider.settingUImage;

      break;
    case "Food":
      confirmDateText = confirmProvider.foodCDate ?? "";
      confirmNameText = confirmProvider.foodCName;
      confirmLocationText = confirmProvider.foodCLocation;
      confirmImageUrl = confirmProvider.foodCImage;
      updateDateText = confirmProvider.foodUDate ?? "";
      updateNameText = confirmProvider.foodUName;
      updateLocationText = confirmProvider.foodULocation;
      updateImageUrl = confirmProvider.foodUImage;

      break;
    case "Wifi":
      confirmDateText = confirmProvider.wifiCDate ?? "";
      confirmNameText = confirmProvider.wifiCName;
      confirmLocationText = confirmProvider.wifiCLocation;
      confirmImageUrl = confirmProvider.wifiCImage;
      updateDateText = confirmProvider.wifiUDate ?? "";
      updateNameText = confirmProvider.wifiUName;
      updateLocationText = confirmProvider.wifiULocation;
      updateImageUrl = confirmProvider.wifiUImage;

      break;
    case "Entertainment":
      confirmDateText = confirmProvider.entertainmentCDate ?? "";
      confirmNameText = confirmProvider.entertainmentCName;
      confirmLocationText = confirmProvider.entertainmentCLocation;
      confirmImageUrl = confirmProvider.entertainmentCImage;
      updateDateText = confirmProvider.entertainmentUDate ?? "";
      updateNameText = confirmProvider.entertainmentUName;
      updateLocationText = confirmProvider.entertainmentULocation;
      updateImageUrl = confirmProvider.entertainmentUImage;

      break;
    case "Games":
      confirmDateText = confirmProvider.gamesCDate ?? "";
      confirmNameText = confirmProvider.gamesCName;
      confirmLocationText = confirmProvider.gamesCLocation;
      confirmImageUrl = confirmProvider.gamesCImage;
      updateDateText = confirmProvider.gamesUDate ?? "";
      updateNameText = confirmProvider.gamesUName;
      updateLocationText = confirmProvider.gamesULocation;
      updateImageUrl = confirmProvider.gamesUImage;

      break;
    case "Parking":
      confirmDateText = confirmProvider.parkingCDate ?? "";
      confirmNameText = confirmProvider.parkingCName;
      confirmLocationText = confirmProvider.parkingCLocation;
      confirmImageUrl = confirmProvider.parkingCImage;
      updateDateText = confirmProvider.parkingUDate ?? "";
      updateNameText = confirmProvider.parkingUName;
      updateLocationText = confirmProvider.parkingULocation;
      updateImageUrl = confirmProvider.parkingUImage;

      break;
    case "Accessibility":
      confirmDateText = confirmProvider.accessCDate ?? "";
      confirmNameText = confirmProvider.accessCName;
      confirmLocationText = confirmProvider.accessCLocation;
      confirmImageUrl = confirmProvider.accessCImage;
      updateDateText = confirmProvider.accessUDate ?? "";
      updateNameText = confirmProvider.accessUName;
      updateLocationText = confirmProvider.accessULocation;
      updateImageUrl = confirmProvider.accessUImage;

      break;
    case "Dress Code":
      confirmDateText = confirmProvider.dressCodeCDate ?? "";
      confirmNameText = confirmProvider.dressCodeCName;
      confirmLocationText = confirmProvider.dressCodeCLocation;
      confirmImageUrl = confirmProvider.dressCodeCImage;
      updateDateText = confirmProvider.dressCodeUDate ?? "";
      updateNameText = confirmProvider.dressCodeUName;
      updateLocationText = confirmProvider.dressCodeULocation;
      updateImageUrl = confirmProvider.dressCodeUImage;
      break;
    case "Cover Charge":
      confirmDateText = confirmProvider.coverChargeCDate ?? "";
      confirmNameText = confirmProvider.coverChargeCName;
      confirmLocationText = confirmProvider.coverChargeCLocation;
      confirmImageUrl = confirmProvider.coverChargeCImage;
      updateDateText = confirmProvider.coverChargeUDate ?? "";
      updateNameText = confirmProvider.coverChargeUName;
      updateLocationText = confirmProvider.coverChargeULocation;
      updateImageUrl = confirmProvider.coverChargeUImage;
      break;
    case "Smoking":
      confirmDateText = confirmProvider.smokingCDate ?? "";
      confirmNameText = confirmProvider.smokingCName;
      confirmLocationText = confirmProvider.smokingCLocation;
      confirmImageUrl = confirmProvider.smokingCImage;
      updateDateText = confirmProvider.smokingUDate ?? "";
      updateNameText = confirmProvider.smokingUName;
      updateLocationText = confirmProvider.smokingULocation;
      updateImageUrl = confirmProvider.smokingUImage;
      break;
    case "Child Friendly":
      confirmDateText = confirmProvider.childCDate ?? "";
      confirmNameText = confirmProvider.childCName;
      confirmLocationText = confirmProvider.childCLocation;
      confirmImageUrl = confirmProvider.childCImage;
      updateDateText = confirmProvider.childUDate ?? "";
      updateNameText = confirmProvider.childUName;
      updateLocationText = confirmProvider.childULocation;
      updateImageUrl = confirmProvider.childUImage;
      break;
    case "Happy Hours":
      confirmDateText = confirmProvider.happyHourCDate ?? "";
      confirmNameText = confirmProvider.happyHourCName;
      confirmLocationText = confirmProvider.happyHourCLocation;
      confirmImageUrl = confirmProvider.happyHourCImage;
      updateDateText = confirmProvider.happyHourUDate ?? "";
      updateNameText = confirmProvider.happyHourUName;
      updateLocationText = confirmProvider.happyHourULocation;
      updateImageUrl = confirmProvider.happyHourUImage;
      break;
    case "Additional Fees":
      confirmDateText = confirmProvider.feesCDate ?? "";
      confirmNameText = confirmProvider.feesCName;
      confirmLocationText = confirmProvider.feesCLocation;
      confirmImageUrl = confirmProvider.feesCImage;
      updateDateText = confirmProvider.feesUDate ?? "";
      updateNameText = confirmProvider.feesUName;
      updateLocationText = confirmProvider.feesULocation;
      updateImageUrl = confirmProvider.feesUImage;
      break;
    case "Price Guide":
      confirmDateText = confirmProvider.priceCDate ?? "";
      confirmNameText = confirmProvider.priceCName;
      confirmLocationText = confirmProvider.priceCLocation;
      confirmImageUrl = confirmProvider.priceCImage;
      updateDateText = confirmProvider.priceUDate ?? "";
      updateNameText = confirmProvider.priceUName;
      updateLocationText = confirmProvider.priceULocation;
      updateImageUrl = confirmProvider.priceUImage;
      break;
    case "Beer - Domestic Bottle":
      confirmDateText = confirmProvider.beerDomCDate ?? "";
      confirmNameText = confirmProvider.beerDomCName;
      confirmLocationText = confirmProvider.beerDomCLocation;
      confirmImageUrl = confirmProvider.beerDomCImage;
      updateDateText = confirmProvider.beerDomUDate ?? "";
      updateNameText = confirmProvider.beerDomUName;
      updateLocationText = confirmProvider.beerDomULocation;
      updateImageUrl = confirmProvider.beerDomUImage;
      break;
    case "Beer - Imported Bottle":
      confirmDateText = confirmProvider.beerImpCDate ?? "";
      confirmNameText = confirmProvider.beerImpCName;
      confirmLocationText = confirmProvider.beerImpCLocation;
      confirmImageUrl = confirmProvider.beerImpCImage;
      updateDateText = confirmProvider.beerImpUDate ?? "";
      updateNameText = confirmProvider.beerImpUName;
      updateLocationText = confirmProvider.beerImpULocation;
      updateImageUrl = confirmProvider.beerImpUImage;
      break;
    case "Beer - Draft":
      confirmDateText = confirmProvider.beerDraftCDate ?? "";
      confirmNameText = confirmProvider.beerDraftCName;
      confirmLocationText = confirmProvider.beerDraftCLocation;
      confirmImageUrl = confirmProvider.beerDraftCImage;
      updateDateText = confirmProvider.beerDraftUDate ?? "";
      updateNameText = confirmProvider.beerDraftUName;
      updateLocationText = confirmProvider.beerDraftULocation;
      updateImageUrl = confirmProvider.beerDraftUImage;
      break;
    case "Well drink with mixer":
      confirmDateText = confirmProvider.wellCDate ?? "";
      confirmNameText = confirmProvider.wellCName;
      confirmLocationText = confirmProvider.wellCLocation;
      confirmImageUrl = confirmProvider.wellCImage;
      updateDateText = confirmProvider.wellUDate ?? "";
      updateNameText = confirmProvider.wellUName;
      updateLocationText = confirmProvider.wellULocation;
      updateImageUrl = confirmProvider.wellUImage;
      break;
    case "Call drink with mixer":
      confirmDateText = confirmProvider.callCDate ?? "";
      confirmNameText = confirmProvider.callCName;
      confirmLocationText = confirmProvider.callCLocation;
      confirmImageUrl = confirmProvider.callCImage;
      updateDateText = confirmProvider.callUDate ?? "";
      updateNameText = confirmProvider.callUName;
      updateLocationText = confirmProvider.callULocation;
      updateImageUrl = confirmProvider.callUImage;
      break;
    case "Cocktail":
      confirmDateText = confirmProvider.cocktailCDate ?? "";
      confirmNameText = confirmProvider.cocktailCName;
      confirmLocationText = confirmProvider.cocktailCLocation;
      confirmImageUrl = confirmProvider.cocktailCImage;
      updateDateText = confirmProvider.cocktailUDate ?? "";
      updateNameText = confirmProvider.cocktailUName;
      updateLocationText = confirmProvider.cocktailULocation;
      updateImageUrl = confirmProvider.cocktailUImage;
      break;
    case "Wine (small glass)":
      confirmDateText = confirmProvider.wineCDate ?? "";
      confirmNameText = confirmProvider.wineCName;
      confirmLocationText = confirmProvider.wineCLocation;
      confirmImageUrl = confirmProvider.wineCImage;
      updateDateText = confirmProvider.wineUDate ?? "";
      updateNameText = confirmProvider.wineUName;
      updateLocationText = confirmProvider.wineULocation;
      updateImageUrl = confirmProvider.wineUImage;
      break;
    case "Bottle Service (1 ltr)":
      confirmDateText = confirmProvider.bottleCDate ?? "";
      confirmNameText = confirmProvider.bottleCName;
      confirmLocationText = confirmProvider.bottleCLocation;
      confirmImageUrl = confirmProvider.bottleCImage;
      updateDateText = confirmProvider.bottleUDate ?? "";
      updateNameText = confirmProvider.bottleUName;
      updateLocationText = confirmProvider.bottleULocation;
      updateImageUrl = confirmProvider.bottleUImage;
      break;
    case "Breakfast Entree":
      confirmDateText = confirmProvider.breakfastCDate ?? "";
      confirmNameText = confirmProvider.breakfastCName;
      confirmLocationText = confirmProvider.breakfastCLocation;
      confirmImageUrl = confirmProvider.breakfastCImage;
      updateDateText = confirmProvider.breakfastUDate ?? "";
      updateNameText = confirmProvider.breakfastUName;
      updateLocationText = confirmProvider.breakfastULocation;
      updateImageUrl = confirmProvider.breakfastUImage;
      break;
    case "Lunch Entree":
      confirmDateText = confirmProvider.lunchCDate ?? "";
      confirmNameText = confirmProvider.lunchCName;
      confirmLocationText = confirmProvider.lunchCLocation;
      confirmImageUrl = confirmProvider.lunchCImage;
      updateDateText = confirmProvider.lunchUDate ?? "";
      updateNameText = confirmProvider.lunchUName;
      updateLocationText = confirmProvider.lunchULocation;
      updateImageUrl = confirmProvider.lunchUImage;
      break;
    case "Dinner Entree":
      confirmDateText = confirmProvider.dinnerCDate ?? "";
      confirmNameText = confirmProvider.dinnerCName;
      confirmLocationText = confirmProvider.dinnerCLocation;
      confirmImageUrl = confirmProvider.dinnerCImage;
      updateDateText = confirmProvider.dinnerUDate ?? "";
      updateNameText = confirmProvider.dinnerUName;
      updateLocationText = confirmProvider.dinnerULocation;
      updateImageUrl = confirmProvider.dinnerUImage;
      break;
    case "Late Entree":
      confirmDateText = confirmProvider.lateCDate ?? "";
      confirmNameText = confirmProvider.lateCName;
      confirmLocationText = confirmProvider.lateCLocation;
      confirmImageUrl = confirmProvider.lateCImage;
      updateDateText = confirmProvider.lateUDate ?? "";
      updateNameText = confirmProvider.lateUName;
      updateLocationText = confirmProvider.lateULocation;
      updateImageUrl = confirmProvider.lateUImage;
      break;
  }

  {
    return AlertDialog(
      title: Text("$venueName $itemName"),
      contentPadding: EdgeInsets.zero,
      content: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: circularAvatar(
                        uiAvatar: false,
                        imageUrl: updateImageUrl ?? "",
                        backColor: colorIndicator(
                            updateDateText: updateDateText,
                            confirmDateText: confirmDateText)),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(updateDateText != null && updateDateText != ""
                            ? "UPDATED: " +
                                DateFormat("dd MMM yyy")
                                    .format(DateTime.parse(updateDateText))
                            : ""),
                        Text(updateNameText != null && updateNameText != ""
                            ? updateNameText
                            : "Unknown User"),
                        Text(updateLocationText != null &&
                                updateLocationText != ""
                            ? updateLocationText
                            : ""),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: circularAvatar(
                        uiAvatar: false,
                        imageUrl: confirmImageUrl ?? "",
                        backColor: colorIndicator(
                            updateDateText: updateDateText,
                            confirmDateText: confirmDateText)),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(confirmDateText != "" && confirmDateText != null
                            ? "Confirmed: " +
                                DateFormat("dd MMM yyy")
                                    .format(DateTime.parse(confirmDateText))
                            : ""),
                        Text(confirmNameText != "" && confirmNameText != null
                            ? confirmNameText
                            : "Unconfirmed"),
                        Text(confirmLocationText != "" &&
                                confirmLocationText != null
                            ? confirmLocationText
                            : ""),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ]),
      actions: [
        TextButton(
          onPressed: () {
            switch (itemName) {
              case "Description":
                confirmProvider.changeDescriptionConfirm();
                break;
              case "Location":
                confirmProvider.changeLocationConfirm();
                break;
              case "Opening Hours":
                confirmProvider.changeOpenHoursConfirm();
                break;
              case "Setting":
                confirmProvider.changeSettingConfirm();
                break;
              case "Food":
                confirmProvider.changeFoodConfirm();
                break;
              case "Wifi":
                confirmProvider.changeWifiConfirm();
                break;
              case "Entertainment":
                confirmProvider.changeEntertainmentConfirm();
                break;
              case "Games":
                confirmProvider.changeGamesConfirm();
                break;
              case "Parking":
                confirmProvider.changeParkingConfirm();
                break;
              case "Accessibility":
                confirmProvider.changeAccessConfirm();
                break;
              case "Dress Code":
                confirmProvider.changeDressCodeConfirm();
                break;
              case "Cover Charge":
                confirmProvider.changeCoverChargeConfirm();
                break;
              case "Smoking":
                confirmProvider.changeSmokingConfirm();
                break;
              case "Child Friendly":
                confirmProvider.changeChildConfirm();
                break;
              case "Happy Hours":
                confirmProvider.changeHappyHourConfirm();
                break;
              case "Additional Fees":
                confirmProvider.changeFeesConfirm();
                break;
              case "Price Guide":
                confirmProvider.changePriceConfirm();
                break;
              case "Beer - Domestic Bottle":
                confirmProvider.changeBeerDomConfirm();
                break;
              case "Beer - Imported Bottle":
                confirmProvider.changeBeerImpConfirm();
                break;
              case "Beer - Draft":
                confirmProvider.changeBeerDraftConfirm();
                break;
              case "Well drink with mixer":
                confirmProvider.changeWellConfirm();
                break;
              case "Call drink with mixer":
                confirmProvider.changeWellConfirm();
                break;
              case "Cocktail":
                confirmProvider.changeCocktailConfirm();
                break;
              case "Wine (small glass)":
                confirmProvider.changeWineConfirm();
                break;
              case "Bottle Service (1 ltr)":
                confirmProvider.changeBottleConfirm();
                break;
              case "Breakfast Entree":
                confirmProvider.changeBreakfastConfirm();
                break;
              case "Lunch Entree":
                confirmProvider.changeLunchConfirm();
                break;
              case "Dinner Entree":
                confirmProvider.changeDinnerConfirm();
                break;
              case "Late Entree":
                confirmProvider.changeLateConfirm();
                break;
            }
            Navigator.pop(context);
          },
          child: const Text("Confirm"),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, NewVenueScreen.routeName);
          },
          child: const Text("Update"),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("OK"),
        ),
      ],
    );
  }
}
