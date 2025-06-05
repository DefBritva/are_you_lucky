import 'package:are_you_lucky/core/domain/services/auth_service.dart';
import 'package:are_you_lucky/core/domain/services/firestore_service.dart';
import 'package:are_you_lucky/features/game_stats/game_stats.dart';
import 'package:are_you_lucky/features/home/auth/auth.dart';
import 'package:are_you_lucky/features/dice/dice.dart';
import 'package:are_you_lucky/features/fortune_wheel/fortune_wheel.dart';
import 'package:are_you_lucky/features/home/home.dart';
import 'package:are_you_lucky/features/minefield/minefield.dart';
import 'package:are_you_lucky/features/profile/profile.dart';
import 'package:are_you_lucky/features/quiz/quiz.dart';
import 'package:are_you_lucky/features/rating/rating.dart';
import 'package:are_you_lucky/features/home/auth/reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static const String home = 'home';
  static const String fortune = 'fortune';
  static const String dice = 'dice';
  static const String minefield = 'minefield';
  static const String quiz = 'quiz';
  static const String profile = 'home/profile';
  static const String rating = 'home/rating';
  static const String achievements = 'home/achievements';
  static const String registration = 'home/reg';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const Home());

      case registration:
        return MaterialPageRoute(builder: (context) => const Registration());

      case profile:
        return MaterialPageRoute(builder: (context) => const Profile());

      case achievements:
        return MaterialPageRoute(builder: (context) {
          return GameStats(
            firestoreService: context.read<FirestoreService>(),
          );
        });

      case rating:
        return MaterialPageRoute(builder: (context) => const Rating());

      case fortune:
        return MaterialPageRoute(builder: (context) => const FortuneW());

      case dice:
        return MaterialPageRoute(builder: (context) => const Dice());

      case minefield:
        return MaterialPageRoute(builder: (context) => const Minefield());

      case quiz:
        return MaterialPageRoute(builder: (context) => const Quiz());

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              backgroundColor: Colors.red,
              body: Text('error'),
            );
          },
        );
    }
  }
}
