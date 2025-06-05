// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:are_you_lucky/core/domain/models/question.dart';
import 'package:are_you_lucky/core/domain/services/auth_service.dart';
import 'package:are_you_lucky/core/domain/services/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  final AuthService authService;
  final FirestoreService firestoreService;
  StreamSubscription<User?>? _authSubscription;
  AuthBloc({required this.authService, required this.firestoreService})
      : super(const AuthState.initial()) {
    _authSubscription = authService.authStateChanges.listen((User? user) {
      if (user == null) {
        emit(_UserIsNotLoggedState());
      } else {
        emit(_UserIsLoggedState(userId: user.uid));
      }
    });
    on<AuthEvent>((event, emit) {});

    // on<_ListenUserAuth>((event, emit) {
    //   authService.authStateChanges.listen((User? user) {
    //     if (user == null) {
    //       emit(_UserIsNotLoggedState());
    //     } else {
    //       emit(_UserIsLoggedState(userId: user.uid));
    //     }
    //   });
    // });

    on<_RegisterUser>((event, emit) async {
      try {
        emit(const _RegistrationStarted());
        final email = event.email;
        final pas = event.pas;
        final nickname = event.nickname;
        final userCredential =
            await authService.createAccount(email: email, password: pas);
        String uid = userCredential.user!.uid;

        await firestoreService.addUser(uid, email, nickname);
        final newState = _RegistrationSuccessful();
        emit(newState);
        await authService.signIn(email: email, password: pas);
        emit(_UserIsLoggedState(userId: uid));
      } on FirebaseAuthException catch (e) {
        emit(_RegistrationError(error: e.toString()));
      }
    });

    on<_Login>((event, emit) async {
      try {
        final email = event.email;
        final pas = event.pas;
        await authService.signIn(email: email, password: pas);
      } on Exception catch (_) {
        emit(_UserIsNotLoggedState());
      }
    });

    on<_Logout>((event, emit) async {
      try {
        await authService.signOut();
        emit(_UserIsNotLoggedState());
      } on Exception catch (_) {
        debugPrint('Logout error!!! ;P');
      }
    });

    on<_AddQuestionsToDb>((event, emit) async {
      try {
        final batch = firestoreService.firestore.batch();
        final collection =
            firestoreService.firestore.collection('questionsEasy');

        for (final q in event.questions) {
          final doc = collection.doc();
          batch.set(doc, {
            'q': q.question,
            'a': q.a,
            'b': q.b,
            'c': q.c,
            'd': q.d,
            'correct': q.correct,
          });
        }

        await batch.commit();
      } catch (e) {
        debugPrint(e.toString());
      }
    });
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    if (json['userId'] != null) {
      return AuthState.userIsLogged(userId: json['userId']);
    } else {
      return AuthState.userIsNotLogged();
    }
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.maybeMap(
      userIsLogged: (value) {
        return {'userId': value.userId};
      },
      orElse: () {
        return {'userId': null};
      },
    );
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel(); // Важно: отменяем подписку!
    return super.close();
  }
}
