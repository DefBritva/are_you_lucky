// ignore_for_file: prefer_const_constructors

import 'package:are_you_lucky/core/routing/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

void main() async {
  await dotenv.load();
  // String apiKey = dotenv.env['API_KEY'] ?? '';

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      onGenerateRoute: (settings) => AppRoutes.generateRoute(settings),
      initialRoute: AppRoutes.home,
      debugShowCheckedModeBanner: false,
    );
  }
}
