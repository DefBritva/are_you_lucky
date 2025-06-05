import 'package:are_you_lucky/core/domain/services/auth_service.dart';
import 'package:are_you_lucky/core/domain/services/firestore_service.dart';
import 'package:are_you_lucky/core/game_difficulty_cubit/gd_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_result_event.dart';
part 'game_result_state.dart';
part 'game_result_bloc.freezed.dart';

class GameResultBloc extends Bloc<GameResultEvent, GameResultState> {
  final AuthService authService;
  final FirestoreService firestoreService;
  GameResultBloc({required this.authService, required this.firestoreService})
      : super(const _Initial()) {
    on<_ShowResult>((event, emit) async {
      final game = event.game;
      final isWin = event.isWin;
      final points = {'noob': 1, 'pro': 2, 'lucker': 4};
      final int earnedPoints = points[event.difficulty]!;
      if (isWin) {
        final newState = _Win(points: earnedPoints);
        // await firestoreService.updateScore();
        emit(newState);
      } else {
        emit(const _Loss());
      }
      await firestoreService.updateGameStats(
          uid: authService.currentUser!.uid,
          game: game,
          isWin: isWin,
          pointsToAdd: isWin ? earnedPoints : 0);
    });

    on<_Cleanup>((event, emit) {
      emit(const _Initial());
    });
  }
}
