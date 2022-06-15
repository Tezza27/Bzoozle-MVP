import 'package:bzoozle/Lists/rants_raves_category_list.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailRantsRaves extends StatefulWidget {
  const DetailRantsRaves({Key? key}) : super(key: key);
  @override
  State<DetailRantsRaves> createState() => _DetailRantsRavesState();
}

class _DetailRantsRavesState extends State<DetailRantsRaves> {
  String categoryValue = "All"; //categoryRantsRavesWriterList[0];
  String typeValue = "Both"; //rantsOrRavesList[0];
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    //final venueProvider = Provider.of<VenueProvider>(context);
    //final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 40.0,
          width: double.infinity,
          child: Center(
            child: Text("RANTS & RAVES",
                style: themeProvider.getTheme.textTheme.headline1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              DropdownButton<String>(
                value: typeValue,
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 30, //this inicrease the size
                elevation: 16,
                style: themeProvider.getTheme.textTheme.bodyText1,
                // this is for underline
                // to give an underline us this in your underline inspite of Container
                //       Container(
                //         height: 2,
                //         color: Colors.grey,
                //       )
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
                iconSize: 30, //this inicrease the size
                elevation: 16,
                style: themeProvider.getTheme.textTheme.bodyText1,
                // this is for underline
                // to give an underline us this in your underline inspite of Container
                //       Container(
                //         height: 2,
                //         color: Colors.grey,
                //       )
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
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Card(
            color: themeProvider.getTheme.cardColor,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "First name",
                          style: themeProvider.getTheme.textTheme.bodyText2,
                        ),
                        Text(
                          "Surname",
                          style: themeProvider.getTheme.textTheme.bodyText2,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Title",
                            style: themeProvider.getTheme.textTheme.bodyText2,
                          ),
                          Text(
                            "Category",
                            style: themeProvider.getTheme.textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Date",
                            style: themeProvider.getTheme.textTheme.bodyText2,
                          ),
                          Text(
                            "Time",
                            style: themeProvider.getTheme.textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 2.0),
                  child: SizedBox(
                    height: 80.0,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Text(
                        "I don’t want this app to be seen as just another review site so I devised the Rants & Raves concept. Short, single-issue tips on the bad (Rants) and the good (Raves). Max 250 characters to make your point and avoid waffle. Much easier for the reader.",
                        style: themeProvider.getTheme.textTheme.bodyText2,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Row(
                    children: <Widget>[
                      const Spacer(flex: 1),
                      Column(
                        children: <Widget>[
                          Text(
                            "#",
                            style: themeProvider.getTheme.textTheme.bodyText2,
                          ),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/cross_double.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 1),
                      Column(
                        children: <Widget>[
                          Text(
                            "#",
                            style: themeProvider.getTheme.textTheme.bodyText2,
                          ),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/cross_single.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 1),
                      Column(
                        children: <Widget>[
                          Text(
                            "#",
                            style: themeProvider.getTheme.textTheme.bodyText2,
                          ),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/tick_single.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 1),
                      Column(
                        children: <Widget>[
                          Text(
                            "#",
                            style: themeProvider.getTheme.textTheme.bodyText2,
                          ),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/tick_double.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 8),
                      Column(
                        children: <Widget>[
                          Text(
                            "#",
                            style: themeProvider.getTheme.textTheme.bodyText2,
                          ),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/tick_single.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 1),
                      Column(
                        children: <Widget>[
                          Text(
                            "#",
                            style: themeProvider.getTheme.textTheme.bodyText2,
                          ),
                          SizedBox(
                              height: 30.0,
                              width: 30.0,
                              child: Image.asset(
                                'assets/images/tick_double.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      const Spacer(flex: 1),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
