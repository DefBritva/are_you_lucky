import 'package:are_you_lucky/core/auth_bloc/bloc.dart';
import 'package:are_you_lucky/core/domain/services/auth_service.dart';
import 'package:are_you_lucky/core/domain/services/firestore_service.dart';
import 'package:are_you_lucky/core/routing/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:auto_size_text/auto_size_text.dart';

class GameStats extends StatelessWidget {
  const GameStats({super.key, required this.firestoreService});

  final FirestoreService firestoreService;

  @override
  Widget build(BuildContext context) {
    final uid = context.read<AuthBloc>().state.userId;
    final rows = [
      ['🎲 Dice'],
      ['💣 Minefield'],
      ['🎡 Wheel'],
      ['❓ Quiz'],
    ];

    Widget headerCell(String emoji, String text, TextAlign align) {
      return Expanded(
        child: Row(
          mainAxisAlignment: align == TextAlign.left
              ? MainAxisAlignment.start
              : align == TextAlign.right
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.center,
          children: [
            Text(emoji, style: const TextStyle(fontSize: 18)),
            const SizedBox(width: 6),
            Flexible(
              child: AutoSizeText(
                text,
                style: _headerStyle,
                maxLines: 1,
                minFontSize: 10,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      );
    }

    Widget dataCell(String text, TextAlign align) {
      return Expanded(
        child: AutoSizeText(
          text,
          textAlign: align,
          maxLines: 1,
          minFontSize: 12,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 16),
        ),
      );
    }

    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Statistics',
      themeMode: ThemeMode.light,
      theme: const NeumorphicThemeData(
        baseColor: Color.fromRGBO(219, 230, 232, 1),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                'home',
                (route) => false,
              );
            },
            color: Colors.grey,
          ),
          centerTitle: false,
          backgroundColor: Colors.transparent,
          title: NeumorphicText(
            textStyle: NeumorphicTextStyle(fontSize: 32),
            'Game stats',
            style: NeumorphicStyle(
              shadowDarkColor: const Color.fromARGB(255, 0, 0, 0),
              depth: 1,
              color: Colors.grey,
            ),
          ),
        ),
        body: FutureBuilder(
            future: firestoreService.getGameStats(uid: uid!),
            builder: (context, snapshot) {
              debugPrint('id $uid');
              debugPrint('data: ${snapshot.data.toString()}');
              if (snapshot.hasError) {
                return Text('Ошибка: ${snapshot.error}');
              }

              if (snapshot.hasData && snapshot.data != null) {
                // 3. Получаем данные
                final gameStats = snapshot.data!;
                final diceStats = gameStats['dice'];
                final minefieldStats = gameStats['minefield'];
                final wheelStats = gameStats['wheel'];
                final quizStats = gameStats['quiz'];
                rows[0].add((diceStats?['wins'] ?? 0).toString());
                rows[0].add((diceStats?['losses'] ?? 0).toString());
                rows[0].add((diceStats?['points'] ?? 0).toString());
                rows[1].add((minefieldStats?['wins'] ?? 0).toString());
                rows[1].add((minefieldStats?['losses'] ?? 0).toString());
                rows[1].add((minefieldStats?['points'] ?? 0).toString());
                rows[2].add((wheelStats?['wins'] ?? 0).toString());
                rows[2].add((wheelStats?['losses'] ?? 0).toString());
                rows[2].add((wheelStats?['points'] ?? 0).toString());
                rows[3].add((quizStats?['wins'] ?? 0).toString());
                rows[3].add((quizStats?['losses'] ?? 0).toString());
                rows[3].add((quizStats?['points'] ?? 0).toString());
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Neumorphic(
                            padding: const EdgeInsets.all(20),
                            style: NeumorphicStyle(
                              depth: 8,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20)),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Заголовки с emoji
                                Row(
                                  children: [
                                    headerCell('🎮', 'Game', TextAlign.left),
                                    headerCell('✅', 'Wins', TextAlign.center),
                                    headerCell('❌', 'Losses', TextAlign.center),
                                    headerCell('⭐', 'Points', TextAlign.right),
                                  ],
                                ),
                                const Divider(thickness: 1),
                                // Данные
                                ...rows.map(
                                  (data) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        dataCell(data[0], TextAlign.left),
                                        dataCell(data[1], TextAlign.center),
                                        dataCell(data[2], TextAlign.center),
                                        dataCell(data[3], TextAlign.right),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return SizedBox();
              }
            }),
      ),
    );
  }
}

const _headerStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16,
);
