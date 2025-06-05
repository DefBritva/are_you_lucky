part of 'game_result_bloc.dart';

@freezed
class GameResultEvent with _$GameResultEvent {
  const factory GameResultEvent.showResult(
      {required bool isWin,
      required String difficulty,
      required String game}) = _ShowResult;
  const factory GameResultEvent.clenup() = _Cleanup;
}
