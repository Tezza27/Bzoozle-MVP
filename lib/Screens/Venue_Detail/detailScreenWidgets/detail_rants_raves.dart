import 'package:bzoozle/Lists/rants_raves_category_list.dart';
import 'package:bzoozle/Lists/rants_raves_list.dart';
import 'package:bzoozle/Screens/Venue_Detail/rants_raves_widgets/rants-raves_widget.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailRantsRaves extends StatefulWidget {
  const DetailRantsRaves({Key? key}) : super(key: key);
  @override
  State<DetailRantsRaves> createState() => _DetailRantsRavesState();
}

class _DetailRantsRavesState extends State<DetailRantsRaves> {
  String categoryValue = "All";
  String typeValue = "Both";
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final venueProvider = Provider.of<VenueProvider>(context);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: <Widget>[
            SizedBox(
              height: 40.0,
              width: double.infinity,
              child: Center(
                child: Text("RANTS & RAVES",
                    style: themeProvider.getTheme.textTheme.headline1),
              ),
            ),
            Positioned(
              top: 0.0,
              right: 8.0,
              child: IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.add_circle, color: Colors.black, size: 35),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                DropdownButton<String>(
                  value: typeValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 30,
                  elevation: 16,
                  style: themeProvider.getTheme.textTheme.bodyText1,
                  underline: Container(),
                  onChanged: (String? newValue) {
                    setState(() {
                      typeValue = newValue!;
                    });
                  },
                  items: rantsOrRavesList
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                DropdownButton<String>(
                  value: categoryValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 30,
                  elevation: 16,
                  style: themeProvider.getTheme.textTheme.bodyText1,
                  underline: Container(),
                  onChanged: (String? newValue) {
                    setState(() {
                      categoryValue = newValue!;
                    });
                  },
                  items: categoryRantsRavesReaderList
                      .map<DropdownMenuItem<String>>((String value) {
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
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
              child: ListView.builder(
                  itemCount: rantsRavesList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    if (categoryValue == "All" ||
                        categoryValue == rantsRavesList[index].category) {
                      return RantsRavesCard(item: rantsRavesList[index]);
                    } else {
                      return Container();
                    }
                  })),
          const SizedBox(height: 200),
        ],
      ),
    );
  }
}
