import 'package:bzoozle/Lists/main_menu_button_list.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:bzoozle/Widgets/mainMenuWidgets/main_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key}) : super(key: key);
  static const routeName = "/mainMenu";

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      //backgroundColor: themeProvider.getTheme.primaryColor,
      appBar: AppBar(
          backgroundColor: themeProvider.getTheme.primaryColor,
          title: const Text("BZOOZLE"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.brightness_6,
                color: Colors.white,
              ),
              onPressed: () {
                themeProvider.swapTheme();
              },
            ),
          ],
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
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
      ),
    );
  }
}
