import 'package:bzoozle/Lists/detail_pages_list.dart';
import 'package:bzoozle/Providers/detailPageProvider.dart';
import 'package:bzoozle/Widgets/detailDescription.dart';
import 'package:bzoozle/Widgets/detailHappyHours.dart';
import 'package:bzoozle/Widgets/detailLocation.dart';
import 'package:bzoozle/Widgets/detailOpenHours.dart';
import 'package:bzoozle/Widgets/detailRants.dart';
import 'package:bzoozle/Widgets/detailRaves.dart';
import 'package:bzoozle/Widgets/detailScrollButton.dart';
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
