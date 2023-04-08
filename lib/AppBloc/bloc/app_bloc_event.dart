part of 'app_bloc_bloc.dart';

@freezed
class AppBlocEvent with _$AppBlocEvent {
  const factory AppBlocEvent.updateUser({required UserModel user}) =
      _UpdateUser;
  const factory AppBlocEvent.logout() = _Logout;
}
