import 'package:bzoozle/Lists/pages_list.dart';
import 'package:bzoozle/Providers/page_number_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/new_description.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newHappyHourWidgets/new_happy_hours.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/new_location.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newOpenHoursWidgets/new_open_hours.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliver_tools/sliver_tools.dart';

class NewScrollButtonList extends StatelessWidget {
  const NewScrollButtonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: SizedBox(
        height: 30,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: newPageList.length,
            itemBuilder: (context, index) {
              return newScrollButton(
                  context: context,
                  index: index,
                  buttonText: newPageList[index]);
            }),
      ),
    );
  }
}

Widget newScrollButton(
    {required BuildContext context,
    int index = 0,
    String buttonText = "Error"}) {
  final pageNumberProvider = Provider.of<PageNumberProvider>(context);
  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
  return ConstrainedBox(
    constraints: const BoxConstraints.tightFor(width: 120, height: 20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: pageNumberProvider.pageNumber == index
            ? themeProvider.getTheme.primaryColor
            : themeProvider.getTheme.splashColor,
        side: BorderSide(width: 1, color: themeProvider.getTheme.primaryColor),
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

class NewContent extends StatelessWidget {
  const NewContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageNumberProvider = Provider.of<PageNumberProvider>(context);
    return SliverToBoxAdapter(
      child: selectPage(pageNumberProvider.pageNumber, context),
    );
  }
}

Widget selectPage(int pageNumber, BuildContext context) {
  Widget selectedPage;
  switch (pageNumber) {
    case 0:
      selectedPage = const NewDescription();
      break;
    case 1:
      selectedPage = const NewLocation();
      break;
    case 2:
      selectedPage = const NewOpenHoursScreen();
      break;
    case 3:
      selectedPage = const NewHappyHoursScreen();
      break;

    default:
      selectedPage = const NewHappyHoursScreen();
  }
  return selectedPage;
}
