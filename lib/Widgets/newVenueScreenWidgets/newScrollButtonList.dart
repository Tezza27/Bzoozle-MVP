import 'package:bzoozle/Lists/pagesList.dart';
import 'package:bzoozle/Providers/pageNumberProvider.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newDescription.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newHappyHourWidgets/newHappyHours.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newLocation.dart';
import 'package:bzoozle/Widgets/newVenueScreenWidgets/newOpenHoursWidgets/newOpenHours.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliver_tools/sliver_tools.dart';

class NewScrollButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: Container(
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
  return ConstrainedBox(
    constraints: BoxConstraints.tightFor(width: 120, height: 20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: pageNumberProvider.pageNumber == index
            ? Colors.orange[800]
            : Colors.black,
        side: BorderSide(width: 1, color: Colors.orange[800]!),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: Text(
        "$buttonText",
        style: TextStyle(
          color: pageNumberProvider.pageNumber == index
              ? Colors.black
              : Colors.orange[800],
        ),
      ),
      onPressed: () {
        pageNumberProvider.changePageNumber(index);
      },
    ),
  );
}

class NewContent extends StatelessWidget {
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
      selectedPage = NewDescription();
      break;
    case 1:
      selectedPage = NewLocation();
      break;
    case 2:
      selectedPage = NewOpenHoursScreen();
      break;
    case 3:
      selectedPage = NewHappyHoursScreen();
      break;

    default:
      selectedPage = NewHappyHoursScreen();
  }
  return selectedPage;
}
