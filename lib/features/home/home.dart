// ignore_for_file: prefer_const_constructors

import 'package:are_you_lucky/core/routing/navigation.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var choise = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(219, 230, 232, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(219, 230, 232, 1),
        title: NeumorphicText(
          'Are you lucky?',
          style: NeumorphicStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: NeumorphicButton(
                    onPressed: () {},
                    style: nStyle2,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: NeumorphicButton(
                    onPressed: () {},
                    style: nStyle2,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: NeumorphicButton(
                    onPressed: () {},
                    style: nStyle2,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(height: .1, color: Colors.black),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 32),
            child: Placeholder(),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: NeumorphicButton(
                        onPressed: () {
                          choise = 'noob';
                          setState(() {});
                        },
                        style: nStyle,
                        child:
                            choise == 'noob' ? Icon(Icons.check) : SizedBox(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    NeumorphicText(
                      'noob',
                      style: NeumorphicStyle(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: NeumorphicButton(
                        onPressed: () {
                          choise = 'pro';
                          setState(() {});
                        },
                        style: nStyle,
                        child: choise == 'pro' ? Icon(Icons.check) : SizedBox(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    NeumorphicText(
                      'pro',
                      style: NeumorphicStyle(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: NeumorphicButton(
                        onPressed: () {
                          choise = 'lucker';
                          setState(() {});
                        },
                        style: nStyle,
                        child:
                            choise == 'lucker' ? Icon(Icons.check) : SizedBox(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    NeumorphicText(
                      'lucker',
                      style: NeumorphicStyle(color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              AppNavigation.goFortuneW(context);
            },
            child: SizedBox(
              height: 100,
              width: 200,
              child: NeumorphicButton(
                onPressed: () {
                  AppNavigation.goMinefield(context);
                },
                style: nStyle,
                child: Center(
                  child: NeumorphicText(
                    textStyle: NeumorphicTextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                    'PLAY',
                    style: NeumorphicStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}

final nStyle =
    NeumorphicStyle(depth: 3, color: Color.fromRGBO(219, 230, 232, 1));
final nStyle2 =
    NeumorphicStyle(depth: 1, color: Color.fromRGBO(219, 230, 232, 1));
