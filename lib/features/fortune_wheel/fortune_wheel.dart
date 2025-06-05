// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:math';

import 'package:are_you_lucky/core/bloc/game_result_bloc.dart';
import 'package:are_you_lucky/core/game_difficulty_cubit/gd_cubit.dart';
import 'package:are_you_lucky/core/routing/navigation.dart';
import 'package:are_you_lucky/features/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:rxdart/subjects.dart';

class FortuneW extends StatefulWidget {
  const FortuneW({super.key});

  @override
  State<FortuneW> createState() => _FortuneWState();
}

class _FortuneWState extends State<FortuneW> {
  late BehaviorSubject<int> noobController;
  late BehaviorSubject<int> proController;
  late BehaviorSubject<int> luckerController;
  StreamSubscription<int>? _noobSubscription;
  StreamSubscription<int>? _proSubscription;
  StreamSubscription<int>? _luckerSubscription;

  @override
  void initState() {
    super.initState();
    noobController = BehaviorSubject();
    proController = BehaviorSubject();
    luckerController = BehaviorSubject();

    _noobSubscription = noobController.stream.listen((_) {});
    _proSubscription = proController.stream.listen((_) {});
    _luckerSubscription = luckerController.stream.listen((_) {});
  }

  @override
  void dispose() {
    _noobSubscription?.cancel();
    _proSubscription?.cancel();
    _luckerSubscription?.cancel();
    noobController.close();
    proController.close();
    luckerController.close();
    super.dispose();
  }

  @override
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
      child: BlocBuilder<DifficultyCubit, GDState>(
        builder: (context, state) {
          return state.when(
            initial: () => SizedBox(),
            noob: () => Scaffold(
              backgroundColor: Color.fromRGBO(219, 230, 232, 1),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  SizedBox(
                    height: 350,
                    child: FortuneWheel(
                      onFling: () {},
                      animateFirst: false,
                      styleStrategy: UniformStyleStrategy(
                          color: Colors.amber, borderColor: Colors.black),
                      physics: NoPanPhysics(),
                      selected: noobController.stream,
                      items: [
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
                      onPressed: () async {
                        final result = Random().nextInt(6);
                        noobController.add(result);

                        await Future.delayed(Duration(seconds: 4));

                        if (context.mounted) {
                          context.read<GameResultBloc>().add(
                              GameResultEvent.showResult(
                                  isWin: [0, 2, 4].contains(result),
                                  game: 'wheel',
                                  difficulty: state.gameDifTypeName ?? ''));
                        }
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
            ),
            pro: () => Scaffold(
              backgroundColor: Color.fromRGBO(219, 230, 232, 1),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  SizedBox(
                    height: 350,
                    child: FortuneWheel(
                      onFling: () {},
                      animateFirst: false,
                      styleStrategy: UniformStyleStrategy(
                          color: Colors.amber, borderColor: Colors.black),
                      physics: NoPanPhysics(),
                      selected: proController.stream,
                      items: [
                        FortuneItem(child: Text('Unlucky')),
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
                      onPressed: () async {
                        final result = Random().nextInt(6);
                        proController.add(result);

                        await Future.delayed(Duration(seconds: 4));

                        if (context.mounted) {
                          context.read<GameResultBloc>().add(
                              GameResultEvent.showResult(
                                  isWin: [2, 4].contains(result),
                                  game: 'wheel',
                                  difficulty: state.gameDifTypeName ?? ''));
                        }
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
            ),
            lucker: () => Scaffold(
              backgroundColor: Color.fromRGBO(219, 230, 232, 1),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  SizedBox(
                    height: 350,
                    child: FortuneWheel(
                      onFling: () {},
                      animateFirst: false,
                      styleStrategy: UniformStyleStrategy(
                          color: Colors.amber, borderColor: Colors.black),
                      physics: NoPanPhysics(),
                      selected: luckerController.stream,
                      items: [
                        FortuneItem(child: Text('Unlucky')),
                        FortuneItem(
                          child: Text('Unlucky'),
                        ),
                        FortuneItem(
                          child: Text('Unlucky'),
                        ),
                        FortuneItem(
                          child: Text('Unlucky'),
                        ),
                        FortuneItem(
                          child: Text('Unlucky'),
                        ),
                        FortuneItem(
                          child: Text('Lucky'),
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
                      onPressed: () async {
                        luckerController.add(Random().nextInt(6));

                        final result = Random().nextInt(6);
                        proController.add(result);

                        await Future.delayed(Duration(seconds: 4));

                        if (context.mounted) {
                          context.read<GameResultBloc>().add(
                              GameResultEvent.showResult(
                                  isWin: [5].contains(result),
                                  game: 'wheel',
                                  difficulty: state.gameDifTypeName ?? ''));
                        }
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
            ),
          );
        },
      ),
    );
  }
}
