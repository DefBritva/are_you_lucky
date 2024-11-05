// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:math';

import 'package:are_you_lucky/features/home/home.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

StreamController<int> controller = StreamController<int>();

class FortuneW extends StatefulWidget {
  const FortuneW({super.key});

  @override
  State<FortuneW> createState() => _FortuneWState();
}

class _FortuneWState extends State<FortuneW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 2,
          ),
          SizedBox(
            height: 300,
            child: FortuneWheel(
              onFling: () {},
              animateFirst: false,
              styleStrategy: UniformStyleStrategy(
                  color: Colors.amber, borderColor: Colors.black),
              physics: NoPanPhysics(),
              selected: controller.stream,
              items: [
                FortuneItem(child: Text('Unlucky')),
                FortuneItem(child: Text('Lucky')),
                FortuneItem(
                  child: Text('Unlucky'),
                ),
                FortuneItem(
                  child: Text('Lucky'),
                ),
                FortuneItem(
                  child: Text('Unlucky'),
                ),
                FortuneItem(
                  child: Text('Lucky'),
                ),
                FortuneItem(
                  child: Text('Unlucky'),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          SizedBox(
            height: 100,
            width: 200,
            child: NeumorphicButton(
              onPressed: () {
                controller.add(Random().nextInt(6));
              },
              style: nStyle,
              child: Center(
                child: NeumorphicText(
                  textStyle: NeumorphicTextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                  'ROLL',
                  style: NeumorphicStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
