// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:are_you_lucky/core/bloc/game_result_bloc.dart';
import 'package:are_you_lucky/core/game_difficulty_cubit/gd_cubit.dart';
import 'package:are_you_lucky/core/routing/navigation.dart';
import 'package:are_you_lucky/features/home/home.dart';
import 'package:are_you_lucky/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  late Set<int> bombs;
  late String dif;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      dif = context.read<DifficultyCubit>().state.gameDifTypeName ?? '';
      bombs = {};
      if (dif == 'noob') {
        for (var i = 0; i < 10; i++) {
          bombs.add(random.nextInt(20));
        }
      } else if (dif == 'pro') {
        for (var i = 0; i < 15; i++) {
          bombs.add(random.nextInt(20));
        }
      } else if (dif == 'lucker') {
        for (var i = 0; i < 19; i++) {
          bombs.add(random.nextInt(20));
        }
      }
    });
  }

  final navigators = AppNavigation.navigators;

  void _showWinDialog(BuildContext context, int points) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Color.fromRGBO(219, 230, 232, 1),
        title: Center(child: Text('Winner! ($points points)')),
        actions: [
          SizedBox(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: NeumorphicButton(
                    onPressed: () {
                      context
                          .read<GameResultBloc>()
                          .add(GameResultEvent.clenup());
                      debugPrint('teeest');
                      Navigator.pop(context);
                      AppNavigation.goHome(context);
                    },
                    style: nStyle,
                    child: Center(
                      child: Text(
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                        'Menu',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 24),
                Expanded(
                  child: NeumorphicButton(
                    onPressed: () {
                      context
                          .read<GameResultBloc>()
                          .add(GameResultEvent.clenup());
                      debugPrint('teeest');
                      Navigator.pop(context);
                      final randomIndex =
                          Random().nextInt(navigators.length); // Читаемость
                      final navigator =
                          navigators[randomIndex]; // Явное выделение логики
                      navigator(context); // Четкий вызов
                    },
                    style: nStyle,
                    child: Center(
                      child: Text(
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                        'New game',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _showLossDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Color.fromRGBO(219, 230, 232, 1),
        title: Center(child: Text('Loss')),
        actions: [
          SizedBox(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: NeumorphicButton(
                    onPressed: () {
                      context
                          .read<GameResultBloc>()
                          .add(GameResultEvent.clenup());
                      debugPrint('teeest');
                      Navigator.pop(context);
                      AppNavigation.goHome(context);
                    },
                    style: nStyle,
                    child: Center(
                      child: Text(
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                        'Menu',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 24),
                Expanded(
                  child: NeumorphicButton(
                    onPressed: () {
                      context
                          .read<GameResultBloc>()
                          .add(GameResultEvent.clenup());

                      Navigator.pop(context);
                      final randomIndex =
                          Random().nextInt(navigators.length); // Читаемость
                      final navigator =
                          navigators[randomIndex]; // Явное выделение логики
                      navigator(context); // Четкий вызов
                    },
                    style: nStyle,
                    child: Center(
                      child: Text(
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                        'New game',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameResultBloc, GameResultState>(
      listenWhen: (previous, current) {
        // Срабатывает только при переходе между разными состояниями
        return previous.runtimeType != current.runtimeType;
      },
      listener: (context, state) {
        state.when(
          initial: () {},
          win: (int points) => _showWinDialog(context, points),
          loss: () => _showLossDialog(context),
        );
      },
      child: Scaffold(
        backgroundColor: Color.fromRGBO(150, 230, 232, 1),
        body: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 0.5,
                  mainAxisSpacing: 0.5),
              itemBuilder: (context, index) {
                return NeumorphicButton(
                  onPressed: () async {
                    choise = index;
                    final isWin = !bombs.contains(choise);
                    setState(() {});
                    await Future.delayed(Duration(milliseconds: 500));
                    context
                        .read<GameResultBloc>()
                        .add(GameResultEvent.showResult(
                          game: 'minefield',
                          isWin: isWin,
                          difficulty: dif,
                        ));
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
      ),
    );
  }
}
