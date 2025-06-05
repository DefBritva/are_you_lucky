// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:math';

import 'package:are_you_lucky/core/bloc/game_result_bloc.dart';
import 'package:are_you_lucky/core/game_difficulty_cubit/gd_cubit.dart';
import 'package:are_you_lucky/core/routing/navigation.dart';
import 'package:are_you_lucky/core/utils/indexed_unique_list.dart';
import 'package:are_you_lucky/features/home/home.dart';
import 'package:are_you_lucky/resources/resources.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  final navigators = AppNavigation.navigators;
  late IndexedUniqueList<int> list;
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
  void initState() {
    final choices =
        context.read<DifficultyCubit>().currentGameData?.dice['choice'];
    list = IndexedUniqueList(choices ?? 0);
    super.initState();
  }

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

  Future<void> _runDiceAnimation() async {
    final completer = Completer<void>();
    int frameCount = 0;

    Timer.periodic(Duration(milliseconds: 80), (timer) {
      angle = random.nextDouble() * 180;
      current = random.nextInt(6);
      setState(() {});
      frameCount++;

      if (frameCount >= 13) {
        timer.cancel();
        setState(() {
          angle = 0;
        });
        completer.complete(); // Сигнализируем о завершении
      }
    });

    return completer.future; // Возвращаем Future для await
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DifficultyCubit>();
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
                          if (list.contains(1)) {
                            list.remove(1);
                          } else {
                            list.add(1);
                          }
                          debugPrint(list.items.toString());
                          setState(() {});
                        },
                        child: Opacity(
                          opacity: list.contains(1) ? 1 : 0.5,
                          child: Image.asset(
                            images[0],
                            height: 60,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (list.contains(2)) {
                            list.remove(2);
                          } else {
                            list.add(2);
                          }
                          setState(() {});
                        },
                        child: Opacity(
                          opacity: list.contains(2) ? 1 : 0.5,
                          child: Image.asset(
                            images[1],
                            height: 60,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (list.contains(3)) {
                            list.remove(3);
                          } else {
                            list.add(3);
                          }
                          setState(() {});
                        },
                        child: Opacity(
                          opacity: list.contains(3) ? 1 : 0.5,
                          child: Image.asset(
                            images[2],
                            height: 60,
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
                          if (list.contains(4)) {
                            list.remove(4);
                          } else {
                            list.add(4);
                          }
                          setState(() {});
                        },
                        child: Opacity(
                          opacity: list.contains(4) ? 1 : 0.5,
                          child: Image.asset(
                            images[3],
                            height: 60,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (list.contains(5)) {
                            list.remove(5);
                          } else {
                            list.add(5);
                          }
                          setState(() {});
                        },
                        child: Opacity(
                          opacity: list.contains(5) ? 1 : 0.5,
                          child: Image.asset(
                            images[4],
                            height: 60,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (list.contains(6)) {
                            list.remove(6);
                          } else {
                            list.add(6);
                          }
                          setState(() {});
                        },
                        child: Opacity(
                          opacity: list.contains(6) ? 1 : 0.5,
                          child: Image.asset(
                            images[5],
                            height: 60,
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
                    // 1. Запускаем анимацию и ЖДЕМ её завершения
                    await _runDiceAnimation();

                    // 2. Только после анимации отправляем результат
                    if (context.mounted) {
                      context.read<GameResultBloc>().add(
                            GameResultEvent.showResult(
                                isWin: list.contains(current + 1),
                                difficulty: state.difficulty ?? '',
                                game: 'dice'),
                          );
                    }
                  },
                  child: Center(child: Text('ROLL')),
                ),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
