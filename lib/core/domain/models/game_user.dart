import 'package:freezed_annotation/freezed_annotation.dart';
part 'game_user.freezed.dart';
part 'game_user.g.dart';

@freezed
class GameUser with _$GameUser {
  const GameUser._();
  const factory GameUser({
    required String uid,
    required String email,
    required String nickname,
    @Default(0) int score,
  }) = _GameUser;

  // Конвертация JSON → GameUser
  factory GameUser.fromJson(Map<String, dynamic> json) =>
      _$GameUserFromJson(json);
}
