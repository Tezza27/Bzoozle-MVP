import 'package:flutter/material.dart';

class RantsRavesCard extends StatelessWidget {
  const RantsRavesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: const <Widget>[
                  Text("First name"),
                  Text("Surname"),
                ],
              ),
              Column(
                children: const <Widget>[
                  Text("Title"),
                  Text("Category"),
                ],
              ),
              Column(
                children: const <Widget>[
                  Text("Date"),
                  Text("Time"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 80.0, child: Text("Content Here")),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text("#"),
                  Image.asset(
                    'assets/images/cross_double.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text("#"),
                  Image.asset(
                    'assets/images/cross_single.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text("#"),
                  Image.asset(
                    'assets/images/tick_single.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text("#"),
                  Image.asset(
                    'assets/images/tick_double.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text("#"),
                  Image.asset(
                    'assets/images/cross_double.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text("#"),
                  Image.asset(
                    'assets/images/cross_double.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
