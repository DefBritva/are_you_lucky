// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:are_you_lucky/features/home/home.dart';
import 'package:are_you_lucky/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

class Minefield extends StatefulWidget {
  const Minefield({super.key});

  @override
  State<Minefield> createState() => _MinefieldState();
}

class _MinefieldState extends State<Minefield> {
  var choise = -1;
  final random = Random();
  final bombs = <int>{};

  @override
  void initState() {
    for (var i = 0; i < 10; i++) {
      bombs.add(random.nextInt(20));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(150, 230, 232, 1),
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 0.5, mainAxisSpacing: 0.5),
            itemBuilder: (context, index) {
              return NeumorphicButton(
                onPressed: () {
                  print(bombs.toString());
                  choise = index;
                  setState(() {});
                },
                style: NeumorphicStyle(
                    shadowLightColor: Colors.red,
                    shadowDarkColor: Colors.red,
                    depth: 3,
                    color: Colors.black.withOpacity(0.3)),
                child: Center(child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Stack(children: [
                      index == choise
                          ? SizedBox()
                          : SvgPicture.asset(
                              MIcons.questionCircleSvgrepoCom,
                              width: constraints.maxWidth,
                            ),
                      if (index == choise && bombs.contains(choise))
                        SvgPicture.asset(
                          MIcons.bombSvgrepoCom,
                          width: constraints.maxWidth,
                        )
                      else
                        SizedBox(),
                      if (index == choise && !bombs.contains(choise))
                        Text('lucker')
                      else
                        SizedBox()
                    ]);
                  },
                )),
              );
            },
            itemCount: 20,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pick one, but carefully',
                style: TextStyle(fontSize: 25),
              ),
              SvgPicture.asset(MIcons.bombSvgrepoCom)
            ],
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
