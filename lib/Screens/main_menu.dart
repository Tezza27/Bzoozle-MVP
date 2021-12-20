import 'package:bzoozle/Lists/main_menu_button_list.dart';
import 'package:bzoozle/Widgets/mainMenuWidgets/main_menu_button.dart';
import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key}) : super(key: key);
  static const routeName = "/mainMenu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: const Text("BZOOZLE"),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
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
    );
  }
}
