part of 'bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.registrationStarted() = _RegistrationStarted;
  const factory AuthState.registrationSuccessful() = _RegistrationSuccessful;
  const factory AuthState.registrationError({required String error}) =
      _RegistrationError;

  const factory AuthState.userIsLogged({required String userId}) =
      _UserIsLoggedState;

  const factory AuthState.userIsNotLogged() = _UserIsNotLoggedState;

  // Геттер для userId
  String? get userId => whenOrNull(
        userIsLogged: (userId) => userId,
      );
}
