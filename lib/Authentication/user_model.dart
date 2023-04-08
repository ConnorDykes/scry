import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// the user class that we use to represent our user, as well as all other
/// user types that can be viewed.
@freezed
class UserModel with _$UserModel {
  /// our user constructor
  const factory UserModel({
    @Default('') String id,
    @Default('') String email,
    @Default('') String password,
    @Default('') String displayName,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String profilePicture,
  }) = _UserModel;

  const UserModel._();

  /// our user type getter
  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = UserModel();

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == UserModel.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != UserModel.empty;

  ///
  String get fullName => '$firstName $lastName';
}
