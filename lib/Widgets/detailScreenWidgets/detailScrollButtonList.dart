import 'package:bzoozle/Lists/detail_pages_list.dart';
import 'package:bzoozle/Providers/detailPageProvider.dart';
import 'package:bzoozle/Widgets/detailScreenWidgets/detailDescription.dart';
import 'package:bzoozle/Widgets/detailScreenWidgets/detailHappyHours.dart';
import 'package:bzoozle/Widgets/detailScreenWidgets/detailLocation.dart';
import 'package:bzoozle/Widgets/detailScreenWidgets/detailOpenHours.dart';
import 'package:bzoozle/Widgets/detailScreenWidgets/detailRants.dart';
import 'package:bzoozle/Widgets/detailScreenWidgets/detailRaves.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliver_tools/sliver_tools.dart';

class DetailScrollButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: Container(
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
  final pageNumberProvider = Provider.of<DetailPageProvider>(context);
  return ConstrainedBox(
    constraints: BoxConstraints.tightFor(width: 120, height: 20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: pageNumberProvider.pageNumber == index
            ? Colors.black
            : Colors.orange[800],
        side: BorderSide(width: 1, color: Colors.black),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: Text(
        "$buttonText",
        style: TextStyle(
          color: pageNumberProvider.pageNumber == index
              ? Colors.orange[800]
              : Colors.black,
        ),
      ),
      onPressed: () {
        pageNumberProvider.changePageNumber(index);
      },
    ),
  );
}

class DetailContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageNumberProvider = Provider.of<DetailPageProvider>(context);
    return SliverToBoxAdapter(
      child: selectPage(pageNumberProvider.pageNumber),
    );
  }
}

Widget selectPage(int pageNumber) {
  Widget selectedPage;
  switch (pageNumber) {
    case 0:
      selectedPage = DetailDescription();
      break;
    case 1:
      selectedPage = DetailLocation();
      break;
    case 2:
      selectedPage = DetailOpenHours();
      break;
    case 3:
      selectedPage = DetailHappyHours();
      break;
    case 4:
      selectedPage = DetailRants();
      break;
    case 5:
      selectedPage = DetailRaves();
      break;

    default:
      selectedPage = DetailDescription();
  }
  return selectedPage;
}
