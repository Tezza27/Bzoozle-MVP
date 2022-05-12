import 'package:bzoozle/Lists/yes_no_list.dart';
import 'package:bzoozle/Providers/venue_provider.dart';
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
    String feesValue = "No";
    TextEditingController? feesController;
    TextEditingController? beerDomesticController;
    TextEditingController? beerDomesticPriceController;
    TextEditingController? beerImportController;
    TextEditingController? beerImportPriceController;
    TextEditingController? beerDraftController;
    TextEditingController? beerDraftPriceController;
    TextEditingController? wellDrinkController;
    TextEditingController? wellDrinkPriceController;
    TextEditingController? callDrinkController;
    TextEditingController? callDrinkPriceController;
    TextEditingController? cocktailController;
    TextEditingController? cocktailPriceController;
    TextEditingController? wineController;
    TextEditingController? winePriceController;
    TextEditingController? bottleServiceController;
    TextEditingController? bottleServicePriceController;
    TextEditingController? breakfastEntreeController;
    TextEditingController? breakfastEntreePriceController;
    TextEditingController? lunchEntreeController;
    TextEditingController? lunchEntreePriceController;
    TextEditingController? dinnerEntreeController;
    TextEditingController? dinnerEntreePriceController;
    TextEditingController? lateEntreeController;
    TextEditingController? lateEntreePriceController;

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
                            Text(
                              "Do they charge additional fees?",
                              style: themeProvider.getTheme.textTheme.bodyText1,
                            ),
                            DropdownButton<String>(
                              value: feesValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30, //this inicrease the size
                              elevation: 16,
                              style: themeProvider.getTheme.textTheme.bodyText1,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  feesValue = newValue!;
                                });
                              },
                              items: yesNoList.map<DropdownMenuItem<String>>(
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                            "Please enter the prices, including tax but excluding tips or other fees or charges, for the lowest priced item available at this venue for each of the categories below",
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
                                //onChanged: (String value) => venueProvider.changeName = value,
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
                          //onChanged: (String value) => venueProvider.changeName = value,
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
