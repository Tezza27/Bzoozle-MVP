import 'package:bzoozle/Providers/user_provider.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserAccountScreen extends StatefulWidget {
  const UserAccountScreen({Key? key}) : super(key: key);
  static const String routeName = '/account';

  @override
  State<UserAccountScreen> createState() => _UserAccountScreenState();
}

class _UserAccountScreenState extends State<UserAccountScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("MY ACCOUNT",
            style: themeProvider.getTheme.textTheme.headline2),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Text(userProvider.firstName,
                    style: themeProvider.getTheme.textTheme.bodyText1),
                Text(userProvider.surName,
                    style: themeProvider.getTheme.textTheme.bodyText1),
              ],
            ),
            Text(userProvider.dOB,
                style: themeProvider.getTheme.textTheme.bodyText1),
            Text(userProvider.country,
                style: themeProvider.getTheme.textTheme.bodyText1),
            Text(userProvider.region,
                style: themeProvider.getTheme.textTheme.bodyText1),
            Text(userProvider.city,
                style: themeProvider.getTheme.textTheme.bodyText1),
            Text(userProvider.email,
                style: themeProvider.getTheme.textTheme.bodyText1),
            Text(userProvider.cat,
                style: themeProvider.getTheme.textTheme.bodyText1),
            Text(userProvider.dark.toString(),
                style: themeProvider.getTheme.textTheme.bodyText1),
          ],
        ),
      ),
    );
  }
}
