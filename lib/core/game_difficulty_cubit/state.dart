part of 'gd_cubit.dart';

// Базовый абстрактный класс для всех данных
abstract class GameData {
  const GameData();

  Map<String, int> get dice;
  Map<String, int> get fortuneWheel;
  Map<String, int> get minefield;
}

// Данные для Noob
class NoobData extends GameData {
  const NoobData();

  @override
  final Map<String, int> dice = const {'choice': 3};

  @override
  final Map<String, int> fortuneWheel = const {'count': 1};

  @override
  final Map<String, int> minefield = const {'count': 1};
}

// Данные для Pro
class ProData extends GameData {
  const ProData();

  @override
  final Map<String, int> dice = const {'choice': 2};

  @override
  final Map<String, int> fortuneWheel = const {'count': 2};

  @override
  final Map<String, int> minefield = const {'count': 2};
}

// Данные для Lucker
class LuckerData extends GameData {
  const LuckerData();

  @override
  final Map<String, int> dice = const {'choice': 1};

  @override
  final Map<String, int> fortuneWheel = const {'count': 3};

  @override
  final Map<String, int> minefield = const {'count': 1};
}

@freezed
class GDState with _$GDState {
  const GDState._();
  const factory GDState.initial() = _Initial;
  const factory GDState.noob() = _Noob;
  const factory GDState.pro() = _Pro;
  const factory GDState.lucker() = _Lucker;

  // Возвращает GameData? (конкретный подкласс)
  GameData? get gameData => when(
        noob: () => const NoobData(),
        pro: () => const ProData(),
        lucker: () => const LuckerData(),
        initial: () => null,
      );

  String? get gameDifTypeName => when(
        noob: () => 'noob',
        pro: () => 'pro',
        lucker: () => 'lucker',
        initial: () => null,
      );
}
