import 'package:are_you_lucky/core/routing/routes.dart';
import 'package:flutter/material.dart';

class AppNavigation {
  static void goHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.home);
  }

  static void goFortuneW(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.fortune);
  }

  static void goDice(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.dice);
  }

  static void goMinefield(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.minefield);
  }

  static void goQuiz(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.quiz);
  }

  static void goProfile(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.profile);
  }

  static void goAchievements(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.achievements);
  }

  static void goRating(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.rating);
  }

  static void goRegistration(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.registration);
  }

  static final List<void Function(BuildContext)> navigators = [
    AppNavigation.goDice,
    AppNavigation.goFortuneW,
    AppNavigation.goMinefield,
    AppNavigation.goQuiz
  ];
}
