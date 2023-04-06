part of 'app_bloc_bloc.dart';

@freezed
class AppBlocState with _$AppBlocState {
  const AppBlocState._();

  const factory AppBlocState({
    @Default(UserModel.empty) UserModel user,
  }) = _AppBlocState;
}
