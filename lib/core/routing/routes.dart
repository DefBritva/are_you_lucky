// ignore_for_file: prefer_const_constructors

import 'package:are_you_lucky/features/dice/dice.dart';
import 'package:are_you_lucky/features/fortune_wheel/fortune_wheel.dart';
import 'package:are_you_lucky/features/home/home.dart';
import 'package:are_you_lucky/features/minefield/minefield.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String fortune = '/fortune';
  static const String dice = '/dice';
  static const String minefield = '/minefield';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const Home());

      case fortune:
        return MaterialPageRoute(builder: (context) => const FortuneW());

      case dice:
        return MaterialPageRoute(builder: (context) => Dice());

      case minefield:
        return MaterialPageRoute(builder: (context) => Minefield());

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              backgroundColor: Colors.red,
              body: Text('error'),
            );
          },
        );
    }
  }
}
