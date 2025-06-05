// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:are_you_lucky/core/bloc/game_result_bloc.dart';
import 'package:are_you_lucky/core/bloc/obs.dart';
import 'package:are_you_lucky/core/domain/services/auth_service.dart';
import 'package:are_you_lucky/core/domain/services/firestore_service.dart';
import 'package:are_you_lucky/core/domain/services/questions.dart';
import 'package:are_you_lucky/core/game_difficulty_cubit/gd_cubit.dart';
import 'package:are_you_lucky/core/routing/navigation.dart';
import 'package:are_you_lucky/core/routing/routes.dart';
import 'package:are_you_lucky/core/auth_bloc/bloc.dart';
import 'package:are_you_lucky/features/quiz/bloc/quiz_bloc.dart';
import 'package:are_you_lucky/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path_provider_android/path_provider_android.dart';
import 'package:path_provider_ios/path_provider_ios.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  if (Platform.isAndroid) PathProviderAndroid.registerWith();
  if (Platform.isIOS) PathProviderIOS.registerWith();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  Bloc.observer = MyBlocObserver();
  await dotenv.load();

  runApp(const AreYouLuckyApp());
}

class AreYouLuckyApp extends StatelessWidget {
  const AreYouLuckyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => IQuestionService(),
        ),
        RepositoryProvider(
          create: (context) => AuthService(),
        ),
        RepositoryProvider(
          create: (context) => FirestoreService(),
        ),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DifficultyCubit(),
        ),
        BlocProvider(
          create: (context) => QuizBloc(context.read<IQuestionService>()),
        ),
        BlocProvider(
          create: (context) => AuthBloc(
              authService: context.read<AuthService>(),
              firestoreService: context.read<FirestoreService>()),
        ),
        BlocProvider(
          create: (context) => GameResultBloc(
              authService: context.read<AuthService>(),
              firestoreService: context.read<FirestoreService>()),
        ),
      ],
      child: MaterialApp(
        onGenerateRoute: (settings) => AppRoutes.generateRoute(settings),
        initialRoute: AppRoutes.home,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
