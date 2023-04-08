part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({@Default(UserModel.empty) UserModel user}) =
      _ProfileState;
}
