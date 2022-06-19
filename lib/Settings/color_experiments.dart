import 'package:flutter/material.dart';
import 'package:neon/neon.dart';
import 'dart:math' as math;

class ColorExperimentScreen extends StatefulWidget {
  const ColorExperimentScreen({Key? key}) : super(key: key);
  static const String routeName = '/color';

  @override
  State<ColorExperimentScreen> createState() => _ColorExperimentScreenState();
}

class _ColorExperimentScreenState extends State<ColorExperimentScreen> {
  String myText = "Bzoozle";
  MaterialColor myColor = Colors.lightBlue;
  double mySize = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Column(
            children: [
              Neon(
                text: myText,
                color: myColor,
                fontSize: mySize,
                font: NeonFont.Automania,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8.0,
                glowing: true,
                glowingDuration: const Duration(seconds: 20),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Neon(
                text: myText,
                color: myColor,
                fontSize: mySize,
                font: NeonFont.Beon,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8.0,
                glowing: true,
                glowingDuration: const Duration(seconds: 20),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Neon(
                text: myText,
                color: myColor,
                fontSize: mySize,
                font: NeonFont.Cyberpunk,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8.0,
                glowing: true,
                glowingDuration: const Duration(seconds: 20),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Neon(
                text: myText,
                color: myColor,
                fontSize: 100, //mySize,
                font: NeonFont.LasEnter,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8.0,
                glowing: true,
                glowingDuration: const Duration(seconds: 20),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Neon(
                text: myText,
                color: myColor,
                fontSize: mySize,
                font: NeonFont.Membra,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8.0,
                glowing: true,
                glowingDuration: const Duration(seconds: 20),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Neon(
                text: myText,
                color: myColor,
                fontSize: 60, //mySize,
                font: NeonFont.Monoton,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8.0,
                glowing: true,
                glowingDuration: const Duration(seconds: 20),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Neon(
                text: myText,
                color: myColor,
                fontSize: mySize,
                font: NeonFont.NightClub70s,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8.0,
                glowing: true,
                glowingDuration: const Duration(seconds: 20),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Neon(
                text: myText,
                color: myColor,
                fontSize: mySize,
                font: NeonFont.Samarin,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8.0,
                glowing: true,
                glowingDuration: const Duration(seconds: 20),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Neon(
                text: myText,
                color: myColor,
                fontSize: mySize,
                font: NeonFont.TextMeOne,
                flickeringText: true,
                flickeringLetters: null,
                blurRadius: 8.0,
                glowing: true,
                glowingDuration: const Duration(seconds: 20),
                //textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  fit: StackFit.expand,
                  clipBehavior: Clip.hardEdge,
                  children: <Widget>[
                    Neon(
                      text: myText,
                      color: myColor,
                      fontSize: 60, //mySize,
                      font: NeonFont.Monoton,
                      flickeringText: true,
                      flickeringLetters: null,
                      blurRadius: 8000.0,
                      glowing: true,
                      //glowingDuration: const Duration(seconds: 0),
                      //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Positioned(
                      top: 170.0,
                      left: 50.0,
                      child: Transform.rotate(
                        angle: -math.pi / 24,
                        child: Neon(
                          text: "Las Vegas",
                          color: Colors.pink,
                          fontSize: 60, //mySize,
                          font: NeonFont.LasEnter,
                          flickeringText: true,
                          flickeringLetters: null,
                          blurRadius: 10000.0,
                          glowing: true,
                          //glowingDuration: const Duration(seconds: 0),
                          //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  fit: StackFit.expand,
                  clipBehavior: Clip.hardEdge,
                  children: <Widget>[
                    Neon(
                      text: myText,
                      color: myColor,
                      fontSize: 60, //mySize,
                      font: NeonFont.Monoton,
                      flickeringText: true,
                      flickeringLetters: null,
                      blurRadius: 8000.0,
                      glowing: true,
                      //glowingDuration: const Duration(seconds: 0),
                      //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Positioned(
                      top: 170.0,
                      left: 50.0,
                      child: Transform.rotate(
                        angle: -math.pi / 24,
                        child: Neon(
                          text: "Las Vegas",
                          color: Colors.orange,
                          fontSize: 60, //mySize,
                          font: NeonFont.LasEnter,
                          flickeringText: true,
                          flickeringLetters: null,
                          blurRadius: 10000.0,
                          glowing: true,
                          //glowingDuration: const Duration(seconds: 0),
                          //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  fit: StackFit.expand,
                  clipBehavior: Clip.hardEdge,
                  children: <Widget>[
                    Neon(
                      text: myText,
                      color: myColor,
                      fontSize: 60, //mySize,
                      font: NeonFont.Monoton,
                      flickeringText: true,
                      flickeringLetters: null,
                      blurRadius: 8000.0,
                      glowing: true,
                      //glowingDuration: const Duration(seconds: 0),
                      //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Positioned(
                      top: 170.0,
                      left: 50.0,
                      child: Transform.rotate(
                        angle: -math.pi / 24,
                        child: Neon(
                          text: "Las Vegas",
                          color: Colors.deepOrange,
                          fontSize: 60, //mySize,
                          font: NeonFont.LasEnter,
                          flickeringText: true,
                          flickeringLetters: null,
                          blurRadius: 10000.0,
                          glowing: true,
                          //glowingDuration: const Duration(seconds: 0),
                          //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  fit: StackFit.expand,
                  clipBehavior: Clip.hardEdge,
                  children: <Widget>[
                    Neon(
                      text: myText,
                      color: Colors.pink,
                      fontSize: 60, //mySize,
                      font: NeonFont.Monoton,
                      flickeringText: true,
                      flickeringLetters: null,
                      blurRadius: 8000.0,
                      glowing: true,
                      //glowingDuration: const Duration(seconds: 0),
                      //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Positioned(
                      top: 170.0,
                      left: 50.0,
                      child: Transform.rotate(
                        angle: -math.pi / 24,
                        child: Neon(
                          text: "Las Vegas",
                          color: Colors.lightBlue,
                          fontSize: 60, //mySize,
                          font: NeonFont.LasEnter,
                          flickeringText: true,
                          flickeringLetters: null,
                          blurRadius: 10000.0,
                          glowing: true,
                          //glowingDuration: const Duration(seconds: 0),
                          //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Center(
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    fit: StackFit.expand,
                    clipBehavior: Clip.hardEdge,
                    children: <Widget>[
                      Neon(
                        text: myText,
                        color: Colors.deepOrange,
                        fontSize: 60, //mySize,
                        font: NeonFont.Monoton,
                        flickeringText: true,
                        flickeringLetters: null,
                        blurRadius: 8000.0,
                        glowing: true,
                        //glowingDuration: const Duration(seconds: 0),
                        //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        top: 170.0,
                        left: 50.0,
                        child: Transform.rotate(
                          angle: -math.pi / 24,
                          child: Neon(
                            text: "Las Vegas",
                            color: Colors.lightBlue,
                            fontSize: 60, //mySize,
                            font: NeonFont.LasEnter,
                            flickeringText: true,
                            flickeringLetters: null,
                            blurRadius: 10000.0,
                            glowing: true,
                            //glowingDuration: const Duration(seconds: 0),
                            //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 600,
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  fit: StackFit.expand,
                  clipBehavior: Clip.hardEdge,
                  children: <Widget>[
                    Neon(
                      text: "B",
                      color: Colors.deepOrange,
                      fontSize: 120, //mySize,
                      font: NeonFont.Monoton,
                      flickeringText: true,
                      flickeringLetters: null,
                      blurRadius: 8000.0,
                      glowing: true,
                      //glowingDuration: const Duration(seconds: 0),
                      //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Positioned(
                      top: 170.0,
                      left: 140.0,
                      child: Transform.rotate(
                        angle: -math.pi / 18,
                        child: Neon(
                          text: "LV",
                          color: Colors.lightBlue,
                          fontSize: 60, //mySize,
                          font: NeonFont.LasEnter,
                          flickeringText: true,
                          flickeringLetters: null,
                          blurRadius: 10000.0,
                          glowing: true,
                          //glowingDuration: const Duration(seconds: 0),
                          //textStyle: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
