part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({required UserModel user}) = _ProfileState;
}
