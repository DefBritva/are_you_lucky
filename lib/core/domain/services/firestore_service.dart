import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class FirestoreService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // ------------------- CRUD операции -------------------

  // Create (Добавление документа)
  Future<void> addUser(String uid, String email, String nickname) async {
    final Map<String, dynamic> gameStatsTemplate = {
      'wins': 0,
      'losses': 0,
      'points': 0,
    };

    await firestore.collection('users').doc(uid).set({
      'email': email,
      'nickname': nickname,
      'score': 0, // Начальное значение
      'dice': gameStatsTemplate, // Статистика для игры в кости
      'minefield': gameStatsTemplate, // Статистика для "Сапера"
      'wheel': gameStatsTemplate, // Статистика для колеса фортуны
      'quiz': gameStatsTemplate, // Статистика для викторины
    });
  }

  // Read (Получение документа по ID)
  Future<Map<String, dynamic>?> getUser(String uid) async {
    DocumentSnapshot doc = await firestore.collection('users').doc(uid).get();
    return doc.data() as Map<String, dynamic>?;
  }

  // Update (Обновление поля)
  Future<void> updateScore(String uid, int newScore) async {
    await firestore.collection('users').doc(uid).update({
      'score': newScore,
    });
  }

  // Delete (Удаление документа)
  Future<void> deleteUser(String uid) async {
    await firestore.collection('users').doc(uid).delete();
  }

  // Stream (Реактивные данные)
  Stream<DocumentSnapshot> getUserStream(String uid) {
    return firestore.collection('users').doc(uid).snapshots();
  }

  // Получение UID пользователя по email
  Future<String?> getUidByEmail(String email) async {
    try {
      QuerySnapshot query = await firestore
          .collection('users')
          .where('email', isEqualTo: email)
          .limit(1)
          .get();

      if (query.docs.isNotEmpty) {
        return query.docs.first.id; // Возвращаем UID документа
      }
      return null;
    } catch (e) {
      debugPrint('Ошибка при получении UID: $e');
      return null;
    }
  }

  /// Обновляет статистику игры пользователя
  /// [uid] - ID пользователя
  /// [game] - название игры ('dice', 'minefield', 'wheel', 'quiz')
  /// [isWin] - true если победа, false если поражение
  /// [pointsToAdd] - количество очков для добавления
  Future<void> updateGameStats({
    required String uid,
    required String game,
    required bool isWin,
    required int pointsToAdd,
  }) async {
    // Проверяем допустимые значения игры
    final validGames = {'dice', 'minefield', 'wheel', 'quiz'};
    if (!validGames.contains(game)) {
      throw ArgumentError(
          'Недопустимое название игры. Допустимые значения: $validGames');
    }

    // Создаем объект для обновления
    final updateData = {
      '$game.wins': FieldValue.increment(isWin ? 1 : 0),
      '$game.losses': FieldValue.increment(isWin ? 0 : 1),
      '$game.points': FieldValue.increment(pointsToAdd),
      'score': FieldValue.increment(pointsToAdd), // Общий счет тоже обновляем
    };

    // Обновляем документ
    await firestore.collection('users').doc(uid).update(updateData);
  }

  Future<Map<String, Map<String, int>>> getGameStats({
    required String uid,
  }) async {
    try {
      final doc = await firestore.collection('users').doc(uid).get();

      if (!doc.exists) {
        throw Exception('Пользователь не найден');
      }

      final data = doc.data() ?? {};
      final games = ['dice', 'minefield', 'wheel', 'quiz'];
      final result = <String, Map<String, int>>{};

      for (final game in games) {
        // Получаем вложенный объект игры
        final gameData = data[game] as Map<String, dynamic>? ?? {};

        result[game] = {
          'wins': (gameData['wins'] as int?) ?? 0,
          'losses': (gameData['losses'] as int?) ?? 0,
          'points': (gameData['points'] as int?) ?? 0,
        };
      }

      // Добавляем общий счет, если нужно
      result['total_score'] = {'score': (data['score'] as int?) ?? 0};

      return result;
    } on FirebaseException catch (e) {
      throw Exception('Firebase error: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }

  Future<void> addQuestionToFirestore({
    required String question,
    required String a,
    required String b,
    required String c,
    required String d,
    required String correct, // Должно быть: 'a', 'b', 'c' или 'd'
  }) async {
    try {
      final collection = firestore.collection('questionsEasy');
      await collection.add({
        'q': question, // Текст вопроса
        'a': a, // Вариант A
        'b': b, // Вариант B
        'c': c, // Вариант C
        'd': d, // Вариант D
        'correct': correct, // Правильный вариант
      });
      debugPrint('Вопрос успешно добавлен в Firestore');
    } catch (e) {
      debugPrint('Ошибка при добавлении вопроса: $e');
      throw e; // Перебрасываем исключение для обработки в вызывающем коде
    }
  }
}
