import 'package:flutter/material.dart';

enum AuthStatus { notLoggedIn, loggedIn }

class OurRoot extends StatefulWidget {
  const OurRoot({Key? key}) : super(key: key);

  @override
  State<OurRoot> createState() => _OurRootState();
}

class _OurRootState extends State<OurRoot> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
