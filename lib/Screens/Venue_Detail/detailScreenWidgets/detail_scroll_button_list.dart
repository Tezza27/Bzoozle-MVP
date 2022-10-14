import 'package:bzoozle/Lists/pages_list.dart';
import 'package:bzoozle/Providers/page_number_provider.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/detail_description.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/detail_facilities.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/detail_happy_hours.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/detail_location.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/detail_open_hours.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/detail_policies.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/detail_pricing.dart';
import 'package:bzoozle/Screens/Venue_Detail/detailScreenWidgets/detail_rants_raves.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliver_tools/sliver_tools.dart';

class DetailScrollButtonList extends StatelessWidget {
  const DetailScrollButtonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: SizedBox(
        height: 30,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: detailPageList.length,
            itemBuilder: (context, index) {
              return detailScrollButton(
                  context: context,
                  index: index,
                  buttonText: detailPageList[index]);
            }),
      ),
    );
  }
}

Widget detailScrollButton(
    {required BuildContext context,
    int index = 0,
    String buttonText = "Error"}) {
  final pageNumberProvider = Provider.of<PageNumberProvider>(context);
  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
  return ConstrainedBox(
    constraints: const BoxConstraints.tightFor(width: 140, height: 20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: pageNumberProvider.pageNumber == index
            ? themeProvider.getTheme.primaryColor
            : themeProvider.getTheme.splashColor,
        side: BorderSide(width: 1, color: themeProvider.getTheme.splashColor),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: pageNumberProvider.pageNumber == index
              ? themeProvider.getTheme.splashColor
              : themeProvider.getTheme.primaryColor,
        ),
      ),
      onPressed: () {
        pageNumberProvider.changePageNumber(index);
      },
    ),
  );
}

class DetailContent extends StatelessWidget {
  const DetailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SliverToBoxAdapter(child: selectPage(pageNumberProvider.pageNumber));
  }
}

Widget selectPage(int pageNumber) {
  Widget selectedPage;
  switch (pageNumber) {
    case 0:
      selectedPage = const DetailDescription();
      break;
    case 1:
      selectedPage = const DetailLocation();
      break;
    case 2:
      selectedPage = const DetailOpenHours();
      break;
    case 3:
      selectedPage = const DetailFacilities();
      break;
    case 4:
      selectedPage = const DetailPolicies();
      break;
    case 5:
      selectedPage = const DetailHappyHours();
      break;
    case 6:
      selectedPage = const DetailPricing();
      break;
    case 7:
      selectedPage = const DetailRantsRaves();
      break;

    default:
      selectedPage = const DetailDescription();
  }
  return selectedPage;
}
