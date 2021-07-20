import 'package:bzoozle/Lists/main_menu_button_list.dart';
import 'package:bzoozle/Widgets/mainMenuWidgets/mainMenuButton.dart';
import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  static const routeName = "/mainMenu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.orange[800],
          title: Text("BZOOZLE"),
          centerTitle: true),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: mainMenuButtonList.length,
            itemBuilder: (BuildContext context, index) {
              return mainMenuButton(
                  context: context, menuButton: mainMenuButtonList[index]);
            },
          ),
        ),
      ),
    );
  }
}
