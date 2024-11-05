// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:math';

import 'package:are_you_lucky/features/home/home.dart';
import 'package:are_you_lucky/resources/resources.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int choisenSide = 0;
  int current = 0;
  int counter = 1;
  double angle = 0;
  final random = Random();
  List<String> images = [
    Images.diceSixFacesOne,
    Images.diceSixFacesTwo,
    Images.diceSixFacesThree,
    Images.diceSixFacesFour,
    Images.diceSixFacesFive,
    Images.diceSixFacesSix
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(219, 230, 232, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Spacer(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        choisenSide = 0;
                        setState(() {});
                      },
                      child: Opacity(
                        opacity: choisenSide == 0 ? 1 : 0.5,
                        child: Image.asset(
                          images[0],
                          height: 50,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        choisenSide = 1;
                        setState(() {});
                      },
                      child: Opacity(
                        opacity: choisenSide == 1 ? 1 : 0.5,
                        child: Image.asset(
                          images[1],
                          height: 50,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        choisenSide = 2;
                        setState(() {});
                      },
                      child: Opacity(
                        opacity: choisenSide == 2 ? 1 : 0.5,
                        child: Image.asset(
                          images[2],
                          height: 50,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        choisenSide = 3;
                        setState(() {});
                      },
                      child: Opacity(
                        opacity: choisenSide == 3 ? 1 : 0.5,
                        child: Image.asset(
                          images[3],
                          height: 50,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        choisenSide = 4;
                        setState(() {});
                      },
                      child: Opacity(
                        opacity: choisenSide == 4 ? 1 : 0.5,
                        child: Image.asset(
                          images[4],
                          height: 50,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        choisenSide = 5;
                        setState(() {});
                      },
                      child: Opacity(
                        opacity: choisenSide == 5 ? 1 : 0.5,
                        child: Image.asset(
                          images[5],
                          height: 50,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Spacer(
              flex: 3,
            ),
            NeumorphicText(
              style: NeumorphicStyle(
                color: Colors.black,
              ),
              'Which side?',
              textStyle: NeumorphicTextStyle(fontSize: 30),
            ),
            Spacer(flex: 3),
            Transform.rotate(
              angle: angle,
              child: Image.asset(
                images[current],
                height: 100,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: NeumorphicButton(
                  style: nStyle,
                  onPressed: () async {
                    Timer.periodic(Duration(milliseconds: 80), (timer) {
                      angle = random.nextDouble() * 180;
                      counter++;
                      current = random.nextInt(6);
                      setState(() {});

                      if (counter >= 13) {
                        timer.cancel();
                        setState(() {
                          counter = 1;
                          angle = 0;
                        });
                      }
                    });
                  },
                  child: Center(child: Text('ROLL'))),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
