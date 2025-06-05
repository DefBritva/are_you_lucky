// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:are_you_lucky/core/const/none.dart';
import 'package:are_you_lucky/core/styles/colors.dart';
import 'package:are_you_lucky/features/quiz/bloc/quiz_bloc.dart';
import 'package:are_you_lucky/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<FocusNode> _fNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode()
  ];
  @override
  void initState() {
    context.read<QuizBloc>().add(QuizEvent.getQuestion());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 75, 193, 1),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Center(
              child: NeumorphicText(
                'QUIZ',
                textStyle: NeumorphicTextStyle(fontSize: 120),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            BlocConsumer<QuizBloc, QuizState>(
              builder: (context, state) {
                return state.when(initial: () {
                  return NONE;
                }, gettingQuestion: () {
                  return LoadingAnimationWidget.inkDrop(
                      color: Colors.white, size: 32);
                }, gettingQuestionError: (e) {
                  return NONE;
                }, gettingQSuccessfully: (quest) {
                  return Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        quest.question,
                        style: TextStyle(
                            fontSize: 20, color: AppColors.textColorOnBlue1),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                onTap: () {},
                                focusColor: Color.fromRGBO(1, 75, 193, 0.5),
                                focusNode: _fNodes[0],
                                title: Text(quest.a,
                                    style: TextStyle(
                                        color: AppColors.textColorOnBlue1)),
                              ),
                              ListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                onTap: () {},
                                title: Text(quest.b,
                                    style: TextStyle(
                                        color: AppColors.textColorOnBlue1)),
                              ),
                              ListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                onTap: () {},
                                title: Text(quest.c,
                                    style: TextStyle(
                                        color: AppColors.textColorOnBlue1)),
                              ),
                              ListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                onTap: () {},
                                title: Text(quest.d,
                                    style: TextStyle(
                                        color: AppColors.textColorOnBlue1)),
                              ),
                              // Row(
                              //   children: [
                              //     Text(quest.a,
                              //         style: TextStyle(
                              //             color: AppColors.textColorOnBlue1)),
                              //   ],
                              // ),
                              // Row(
                              //   children: [
                              //     Text(quest.b,
                              //         style: TextStyle(
                              //             color: AppColors.textColorOnBlue1)),
                              //   ],
                              // ),
                              // Row(
                              //   children: [
                              //     Text(quest.c,
                              //         style: TextStyle(
                              //             color: AppColors.textColorOnBlue1)),
                              //   ],
                              // ),
                              // Row(
                              //   children: [
                              //     Text(quest.d,
                              //         style: TextStyle(
                              //             color: AppColors.textColorOnBlue1)),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                });
              },
              listener: (context, state) {
                state.whenOrNull(
                  gettingQuestionError: (error) {
                    showDialogAboutError(context);
                  },
                );
              },
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showDialogAboutError(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text("couldn't get a question"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'))
            ],
          );
        });
  }
}
