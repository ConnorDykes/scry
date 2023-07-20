part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.logout() = _Logout;
  const factory ProfileEvent.deleteAccount() = _DeleteAccount;
  const factory ProfileEvent.editProfile({required BuildContext context}) =
      _EditProfile;
  const factory ProfileEvent.updateFirstName({required String fistName}) =
      _UpdateFirstName;
  const factory ProfileEvent.updateLastName({required String lastName}) =
      _UpdateLastName;
  const factory ProfileEvent.updateDisplayName({required String displayName}) =
      _UpdateDisplayName;
  const factory ProfileEvent.updateCity({required String city}) = _UpdateCity;
  const factory ProfileEvent.updateZipCode({required String zipCode}) =
      _UpdateZipCode;
  const factory ProfileEvent.updateState({required String state}) =
      _UpdateState;
}
