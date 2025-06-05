import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.dart';
part 'gd_cubit.freezed.dart';

class DifficultyCubit extends Cubit<GDState> {
  DifficultyCubit() : super(const GDState.initial());

  // Методы для изменения состояния
  void setToNoob() => emit(const GDState.noob());
  void setToPro() => emit(const GDState.pro());
  void setToLucker() => emit(const GDState.lucker());
  void reset() => emit(const GDState.initial());

  // Геттер для текущих данных
  GameData? get currentGameData => state.gameData;
  String? get difficulty => state.gameDifTypeName;

  // Методы для доступа к конкретным данным
  Map<String, int>? get currentDiceData => state.gameData?.dice;
  Map<String, int>? get currentFortuneWheelData => state.gameData?.fortuneWheel;
  Map<String, int>? get currentMinefieldData => state.gameData?.minefield;
}
