part of 'bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.registerUser(
      {required String email,
      required String pas,
      required String nickname}) = _RegisterUser;
  const factory AuthEvent.login({required String email, required String pas}) =
      _Login;
  const factory AuthEvent.userLogged({required User user}) = _UserLogged;
  const factory AuthEvent.checkUserLogged() = _CheckUserLogged;
  const factory AuthEvent.listenUserAuth() = _ListenUserAuth;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.addQuestionsToDb(
      {required List<Question> questions}) = _AddQuestionsToDb;
}
