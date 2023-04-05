import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// the user class that we use to represent our user, as well as all other
/// user types that can be viewed.
@freezed
class User with _$User {
  /// our user constructor
  const factory User({
    @Default('') String id,
    @Default('') String email,
    @Default('') String displayName,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String profilePicture,
  }) = _User;

  const User._();

  /// our user type getter
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = User();

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  ///
  String get fullName => '$firstName $lastName';
}
