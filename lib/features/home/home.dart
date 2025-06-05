// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:are_you_lucky/core/domain/models/question.dart';
import 'package:are_you_lucky/core/game_difficulty_cubit/gd_cubit.dart';
import 'package:are_you_lucky/core/routing/navigation.dart';
import 'package:are_you_lucky/core/auth_bloc/bloc.dart';
import 'package:are_you_lucky/features/home/auth/auth.dart';
import 'package:are_you_lucky/resources/resources.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final navigators = AppNavigation.navigators;
  @override
  void initState() {
    context.read<DifficultyCubit>().setToNoob();
    super.initState();
  }

  var choise = 'noob';
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DifficultyCubit>();
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
            userIsLogged: (_) {
              return Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Color.fromRGBO(219, 230, 232, 1),
                appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Color.fromRGBO(219, 230, 232, 1),
                  title: NeumorphicText(
                    textStyle: NeumorphicTextStyle(fontSize: 32),
                    'Are you lucky?',
                    style: NeumorphicStyle(
                      shadowDarkColor: Color.fromARGB(255, 0, 0, 0),
                      depth: 1,
                      color: Colors.grey,
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 35,
                              height: 35,
                              child: BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return NeumorphicButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {
                                      state.whenOrNull(
                                        userIsLogged: (user) {
                                          AppNavigation.goProfile(context);
                                        },
                                      );
                                    },
                                    style: nStyle2,
                                    child: Center(
                                      child: SvgPicture.asset(
                                        height: 25,
                                        MIcons.iconlySvgOptimizedOptimized2_,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 5),
                            SizedBox(
                              width: 35,
                              height: 35,
                              child: NeumorphicButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  AppNavigation.goAchievements(context);
                                },
                                style: nStyle2,
                                child: Center(
                                  child: SvgPicture.asset(
                                    height: 25,
                                    MIcons.iconlySvgOptimizedOptimized,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            SizedBox(
                              width: 35,
                              height: 35,
                              child: NeumorphicButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  AppNavigation.goRating(context);
                                },
                                style: nStyle2,
                                child: Center(
                                  child: SvgPicture.asset(
                                    height: 30,
                                    MIcons.pedestalSvgrepoCom,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(height: .1, color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 32, bottom: 32),
                      child: SvgPicture.asset(
                        MIcons.gamblerLuckSvgrepoCom,
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
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
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    cubit.setToNoob();
                                    choise = 'noob';
                                    setState(() {});
                                  },
                                  style: nStyle,
                                  child: choise == 'noob'
                                      ? Icon(Icons.check)
                                      : SizedBox(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'noob',
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: NeumorphicButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    cubit.setToPro();
                                    choise = 'pro';
                                    setState(() {});
                                  },
                                  style: nStyle,
                                  child: choise == 'pro'
                                      ? Icon(Icons.check)
                                      : SizedBox(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'pro',
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: NeumorphicButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    cubit.setToLucker();
                                    choise = 'lucker';
                                    setState(() {});
                                  },
                                  style: nStyle,
                                  child: choise == 'lucker'
                                      ? Icon(Icons.check)
                                      : SizedBox(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'lucker',
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    SizedBox(
                      height: 100,
                      width: 200,
                      child: NeumorphicButton(
                        onPressed: () {
                          // final randomIndex = Random().nextInt(3);
                          // final navigator = navigators[randomIndex];
                          // navigator(context);
                          context
                              .read<AuthBloc>()
                              .add(AuthEvent.addQuestionsToDb(questions: [
                                Question(
                                  question: "What is the SI unit of force?",
                                  a: "Joule",
                                  b: "Watt",
                                  c: "Newton",
                                  d: "Pascal",
                                  correct: "c",
                                ),
                                Question(
                                  question:
                                      "Which law states that every action has an equal and opposite reaction?",
                                  a: "Newton's First Law",
                                  b: "Newton's Second Law",
                                  c: "Newton's Third Law",
                                  d: "Law of Gravitation",
                                  correct: "c",
                                ),
                                Question(
                                  question:
                                      "What does the conservation of energy principle state?",
                                  a: "Energy can be destroyed",
                                  b: "Energy can be created",
                                  c: "Energy cannot be created or destroyed",
                                  d: "Energy decreases over time",
                                  correct: "c",
                                ),
                                Question(
                                  question:
                                      "What type of wave requires a medium to travel through?",
                                  a: "Electromagnetic wave",
                                  b: "Light wave",
                                  c: "Radio wave",
                                  d: "Mechanical wave",
                                  correct: "d",
                                ),
                                Question(
                                  question:
                                      "What is the acceleration due to gravity on Earth's surface?",
                                  a: "6.67 m/s²",
                                  b: "9.8 m/s²",
                                  c: "10.2 m/s²",
                                  d: "5.5 m/s²",
                                  correct: "b",
                                ),
                                Question(
                                  question:
                                      "Which physicist developed the theory of relativity?",
                                  a: "Isaac Newton",
                                  b: "Niels Bohr",
                                  c: "Albert Einstein",
                                  d: "Galileo Galilei",
                                  correct: "c",
                                ),
                                Question(
                                  question:
                                      "What is the formula for kinetic energy?",
                                  a: "mgh",
                                  b: "½mv²",
                                  c: "Fd",
                                  d: "PV",
                                  correct: "b",
                                ),
                                Question(
                                  question:
                                      "Which phenomenon explains why the sky appears blue?",
                                  a: "Refraction",
                                  b: "Reflection",
                                  c: "Rayleigh scattering",
                                  d: "Doppler effect",
                                  correct: "c",
                                ),
                                Question(
                                  question:
                                      "What subatomic particle has a positive charge?",
                                  a: "Electron",
                                  b: "Neutron",
                                  c: "Proton",
                                  d: "Photon",
                                  correct: "c",
                                ),
                                Question(
                                  question:
                                      "Which law states that the pressure of a gas is inversely proportional to its volume at constant temperature?",
                                  a: "Charles's Law",
                                  b: "Avogadro's Law",
                                  c: "Gay-Lussac's Law",
                                  d: "Boyle's Law",
                                  correct: "d",
                                ),
                              ]));
                        },
                        style: nStyle,
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                            'PLAY',
                          ),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ),
              );
            },
            userIsNotLogged: () => Auth(),
            orElse: () => Scaffold(
                  backgroundColor: Color.fromRGBO(219, 230, 232, 1),
                  body: Center(
                      child: CircularProgressIndicator(
                    color: Colors.black,
                  )),
                ));
      },
    );
  }
}

final nStyle =
    NeumorphicStyle(depth: 3, color: Color.fromRGBO(219, 230, 232, 1));
final nStyle2 =
    NeumorphicStyle(depth: 1, color: Color.fromRGBO(219, 230, 232, 1));
