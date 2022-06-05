import 'package:flutter/material.dart';

class ColorPalletScreen extends StatefulWidget {
  const ColorPalletScreen({Key? key}) : super(key: key);
  static const String routeName = '/pallet';

  @override
  State<ColorPalletScreen> createState() => _ColorPalletScreenState();
}

class _ColorPalletScreenState extends State<ColorPalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 127, 0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 254, 158, 62),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 5, 4, 170),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 127, 0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 83, 244, 255),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 204, 4, 125),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 100, 255),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 65, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
