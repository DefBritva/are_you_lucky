import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  final List<List<String>> _rows = [];
  final ScrollController _scrollController = ScrollController();
  int _loadedCount = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadMore();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 100) {
        _loadMore();
      }
    });
  }

  void _loadMore() async {
    if (_isLoading) return;
    _isLoading = true;

    await Future.delayed(const Duration(seconds: 1));

    final newRows = List.generate(20, (i) {
      final index = _loadedCount + i + 1;
      String emoji;
      switch (index) {
        case 1:
          emoji = '🥇';
          break;
        case 2:
          emoji = '🥈';
          break;
        case 3:
          emoji = '🥉';
          break;
        default:
          emoji = numberToEmoji(index);
      }
      return [emoji, 'Player $index', (1000 - index * 5).toString()];
    });

    setState(() {
      _rows.addAll(newRows);
      _loadedCount += newRows.length;
      _isLoading = false;
    });
  }

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Player Rating',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(219, 230, 232, 1), // фон отступов
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
            'Rating',
            style: NeumorphicStyle(
              shadowDarkColor: Color.fromARGB(255, 0, 0, 0),
              depth: 1,
              color: Colors.grey,
            ),
          ),
        ),
        body: Container(
          color: Color.fromRGBO(219, 230, 232, 1), // белые отступы вокруг
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(219, 230, 232, 1), // фон таблицы
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        headerCell('🏅', 'Place', TextAlign.left),
                        headerCell('🧑‍💻', 'Nickname', TextAlign.center),
                        headerCell('⭐', 'Points', TextAlign.right),
                      ],
                    ),
                    const Divider(thickness: 1),
                    Expanded(
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount: _rows.length + 1,
                        itemBuilder: (context, index) {
                          if (index == _rows.length) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Center(
                                child: _isLoading
                                    ? const CircularProgressIndicator()
                                    : const SizedBox.shrink(),
                              ),
                            );
                          }

                          final data = _rows[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                dataCell(data[0], TextAlign.left),
                                dataCell(data[1], TextAlign.center),
                                dataCell(data[2], TextAlign.right),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const _headerStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

String numberToEmoji(int number) {
  final digits = number.toString().split('');
  const digitEmojiMap = {
    '0': '0️⃣',
    '1': '1️⃣',
    '2': '2️⃣',
    '3': '3️⃣',
    '4': '4️⃣',
    '5': '5️⃣',
    '6': '6️⃣',
    '7': '7️⃣',
    '8': '8️⃣',
    '9': '9️⃣',
  };
  return digits.map((d) => digitEmojiMap[d] ?? d).join();
}
