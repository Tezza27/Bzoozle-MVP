import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class FizzBackground extends StatefulWidget {
  const FizzBackground({Key? key}) : super(key: key);

  @override
  State<FizzBackground> createState() => _FizzBackgroundState();
}

class _FizzBackgroundState extends State<FizzBackground> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const RiveAnimation.asset(
        'assets/animations/fizz_background.riv',
        fit: BoxFit.cover,
      ),
    );
  }
}
