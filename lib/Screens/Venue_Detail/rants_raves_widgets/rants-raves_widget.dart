// ignore: file_names
import 'package:bzoozle/Models/rants_and_raves_model.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RantsRavesCard extends StatelessWidget {
  const RantsRavesCard({Key? key, required this.item}) : super(key: key);
  final RantsRaves item;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    double containerSize = 25;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        color: themeProvider.getTheme.primaryColor,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                item.title,
                style: themeProvider.getTheme.textTheme.headline4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "${item.type} about ${item.category!}",
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                  Text(
                    item.date!,
                    style: themeProvider.getTheme.textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    item.name!,
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                  Text(
                    item.location!,
                    style: themeProvider.getTheme.textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Expanded(
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 4.0),
                    child: Text(
                      item.content!,
                      style: themeProvider.getTheme.textTheme.bodyText2,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              item.strongDisagreeCount.toString(),
                              style: themeProvider.getTheme.textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            height: containerSize,
                            width: containerSize,
                            child: Image.asset(
                              'assets/images/double_thumbs_down.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              item.disagreeCount.toString(),
                              style: themeProvider.getTheme.textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            height: containerSize,
                            width: containerSize,
                            child: Image.asset(
                              'assets/images/single_thumbs_down.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              item.agreeCount.toString(),
                              style: themeProvider.getTheme.textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            height: containerSize,
                            width: containerSize,
                            child: Image.asset(
                              'assets/images/single_thumbs_up.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              item.strongAgreeCount.toString(),
                              style: themeProvider.getTheme.textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            height: containerSize,
                            width: containerSize,
                            child: Image.asset(
                              'assets/images/double_thumbs_up.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              item.funnyCount.toString(),
                              style: themeProvider.getTheme.textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            height: containerSize,
                            width: containerSize,
                            child: Image.asset(
                              'assets/images/funny.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              item.cheersCount.toString(),
                              style: themeProvider.getTheme.textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            height: containerSize,
                            width: containerSize,
                            child: Image.asset(
                              'assets/images/cheers.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
