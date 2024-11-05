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
}
