part of 'game_result_bloc.dart';

@freezed
class GameResultState with _$GameResultState {
  const factory GameResultState.initial() = _Initial;
  const factory GameResultState.win({
    required int points,
  }) = _Win;
  const factory GameResultState.loss() = _Loss;
}
