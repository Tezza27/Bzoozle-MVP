import 'package:bzoozle/Lists/yes_no_list.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewPricingScreen extends StatefulWidget {
  const NewPricingScreen({Key? key}) : super(key: key);

  @override
  State<NewPricingScreen> createState() => _NewPricingScreenState();
}

class _NewPricingScreenState extends State<NewPricingScreen> {
  @override
  Widget build(BuildContext context) {
    final venueProvider = Provider.of<VenueProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);

    TextEditingController? feesController;
    feesController?.text = venueProvider.feesCom.toString();
    TextEditingController? beerDomesticController;
    beerDomesticController?.text = venueProvider.beerDomCom.toString();
    TextEditingController? beerDomesticPriceController;
    beerDomesticPriceController?.text = venueProvider.beerDom.toString();
    TextEditingController? beerImportController;
    beerImportController?.text = venueProvider.beerImpCom.toString();
    TextEditingController? beerImportPriceController;
    beerImportPriceController?.text = venueProvider.beerImpCom.toString();
    TextEditingController? beerDraftController;
    beerDraftController?.text = venueProvider.beerDraftCom.toString();
    TextEditingController? beerDraftPriceController;
    beerDraftPriceController?.text = venueProvider.beerDraft.toString();
    TextEditingController? wellDrinkController;
    wellDrinkController?.text = venueProvider.wellCom.toString();
    TextEditingController? wellDrinkPriceController;
    wellDrinkPriceController?.text = venueProvider.wellCom.toString();
    TextEditingController? callDrinkController;
    callDrinkController?.text = venueProvider.callCom.toString();
    TextEditingController? callDrinkPriceController;
    callDrinkPriceController?.text = venueProvider.callCom.toString();
    TextEditingController? cocktailController;
    cocktailController?.text = venueProvider.cocktailCom.toString();
    TextEditingController? cocktailPriceController;
    cocktailPriceController?.text = venueProvider.cocktail.toString();
    TextEditingController? wineController;
    wineController?.text = venueProvider.wineCom.toString();
    TextEditingController? winePriceController;
    winePriceController?.text = venueProvider.wine.toString();
    TextEditingController? bottleServiceController;
    bottleServiceController?.text = venueProvider.bottleCom.toString();
    TextEditingController? bottleServicePriceController;
    bottleServicePriceController?.text = venueProvider.bottle.toString();
    TextEditingController? breakfastEntreeController;
    breakfastEntreeController?.text = venueProvider.bEntreeCom.toString();
    TextEditingController? breakfastEntreePriceController;
    breakfastEntreePriceController?.text = venueProvider.bEntree.toString();
    TextEditingController? lunchEntreeController;
    lunchEntreeController?.text = venueProvider.lEntreeCom.toString();
    TextEditingController? lunchEntreePriceController;
    lunchEntreePriceController?.text = venueProvider.lEntree.toString();
    TextEditingController? dinnerEntreeController;
    dinnerEntreeController?.text = venueProvider.lEntreeCom.toString();
    TextEditingController? dinnerEntreePriceController;
    dinnerEntreePriceController?.text = venueProvider.dEntree.toString();
    TextEditingController? lateEntreeController;
    lateEntreeController?.text = venueProvider.lEntreeCom.toString();
    TextEditingController? lateEntreePriceController;
    lateEntreePriceController?.text = venueProvider.lEntree.toString();
    int pricePoint = 0;

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
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("ADDITIONAL FEES",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                "Are additional fees charged?",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            DropdownButton<String>(
                              value: venueProvider.fees,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                venueProvider.selectedFees = newValue!;
                              },
                              items: feesList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: feesController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeFeesCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("PRICE GUIDE",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Text(
                          "Which of these categories best describes the general pricing (excluding happy hour pricing) at ${venueProvider.venueName.isEmpty ? "this venue" : venueProvider.venueName} compared to other ${venueProvider.venueCity} venues?",
                          style: themeProvider.getTheme.textTheme.bodyText1,
                        ),
                      ),
                      //TODO Hook up radiogroup to venueProvider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 40.0,
                              child: RadioListTile(
                                dense: true,
                                value: 0,
                                groupValue: venueProvider,
                                activeColor: orange1,
                                onChanged: (value) =>
                                    setState(() => pricePoint = 0),
                                title: Text(
                                  "\$",
                                  style: themeProvider
                                      .getTheme.textTheme.bodyText1,
                                ),
                                secondary: Text(
                                  priceList[0],
                                  style: themeProvider
                                      .getTheme.textTheme.bodyText1,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                              child: RadioListTile(
                                dense: true,
                                value: 1,
                                groupValue: pricePoint,
                                activeColor: orange1,
                                onChanged: (value) =>
                                    setState(() => pricePoint = 1),
                                title: Text(
                                  "\$\$",
                                  style: themeProvider
                                      .getTheme.textTheme.bodyText1,
                                ),
                                secondary: Text(
                                  priceList[1],
                                  style: themeProvider
                                      .getTheme.textTheme.bodyText1,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                              child: RadioListTile(
                                dense: true,
                                value: 2,
                                groupValue: pricePoint,
                                activeColor: orange1,
                                onChanged: (value) =>
                                    setState(() => pricePoint = 2),
                                title: Text(
                                  "\$\$\$",
                                  style: themeProvider
                                      .getTheme.textTheme.bodyText1,
                                ),
                                secondary: Text(
                                  priceList[2],
                                  style: themeProvider
                                      .getTheme.textTheme.bodyText1,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                              child: RadioListTile(
                                dense: true,
                                value: 3,
                                groupValue: pricePoint,
                                activeColor: orange1,
                                onChanged: (value) =>
                                    setState(() => pricePoint = 3),
                                title: Text(
                                  "\$\$\$\$",
                                  style: themeProvider
                                      .getTheme.textTheme.bodyText1,
                                ),
                                secondary: Text(
                                  priceList[3],
                                  style: themeProvider
                                      .getTheme.textTheme.bodyText1,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                              child: RadioListTile(
                                dense: true,
                                value: 4,
                                groupValue: pricePoint,
                                activeColor: orange1,
                                onChanged: (value) =>
                                    setState(() => pricePoint = 4),
                                title: Text(
                                  "\$\$\$\$\$",
                                  style: themeProvider
                                      .getTheme.textTheme.bodyText1,
                                ),
                                secondary: Text(
                                  priceList[4],
                                  style: themeProvider
                                      .getTheme.textTheme.bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: feesController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changePriceCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comments'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("PRICES FROM",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                            "Please enter the prices, including tax but excluding tips or other fees or charges, for the lowest priced item available outside of happy hour at this venue for each of the categories below",
                            style: themeProvider.getTheme.textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text("DRINKS",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Beer - Domestic Bottle",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: beerDomesticPriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeBeerDom = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: beerDomesticController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeBeerDomCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Brands at that price'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Beer - Import Bottle",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: beerImportPriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeBeerImp = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: beerImportController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeBeerImpCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Brands at that price'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Beer - Draft",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: beerDraftPriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeBeerDraft = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: beerDraftController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeBeerDraftCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Brands at that price'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Well Drink With Mixer",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: wellDrinkPriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeWell = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: wellDrinkController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeWellCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Brands at that price'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Call Drink With Mixer",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: callDrinkPriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeCall = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: callDrinkController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeCallCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Brands at that price'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cocktail",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: cocktailPriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeCocktail = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: cocktailController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeCocktailCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Brands at that price'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Wine - Small Glass",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: winePriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeWine = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: wineController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeWineCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Brands at that price'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bottle Service",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: bottleServicePriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeBottle = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: bottleServiceController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeBottleCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Brands at that price'),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text("FOOD",
                            style: themeProvider.getTheme.textTheme.headline2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Breakfast Entree",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: breakfastEntreePriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeBEntree = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: breakfastEntreeController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeBEntreeCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Example options at that price'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lunch Entree",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: lunchEntreePriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeLEntree = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: lunchEntreeController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeLEntreeCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Example options at that price'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dinner Entree",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: dinnerEntreePriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeDEntree = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: dinnerEntreeController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeDEntreeCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Example options at that price'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Late Entree",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text(
                                "\$",
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                textInputAction: TextInputAction.go,
                                controller: lateEntreePriceController,
                                style:
                                    themeProvider.getTheme.textTheme.bodyText1,
                                textAlignVertical: TextAlignVertical.top,
                                onSubmitted: (String value) =>
                                    venueProvider.changeLateEntree = value,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 0.0),
                                    labelText: 'Price'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: lateEntreeController,
                          minLines: 1,
                          maxLines: 10,
                          style: themeProvider.getTheme.textTheme.bodyText1,
                          textAlignVertical: TextAlignVertical.top,
                          onSubmitted: (String value) =>
                              venueProvider.changeLateEntreeCom = value,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Example options at that price'),
                        ),
                      ),
                      const SizedBox(
                        height: 80.0,
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
