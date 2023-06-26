part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.logout() = _Logout;
  const factory ProfileEvent.deleteAccount() = _DeleteAccount;
  const factory ProfileEvent.editProfile({required BuildContext context}) =
      _EditProfile;
}
