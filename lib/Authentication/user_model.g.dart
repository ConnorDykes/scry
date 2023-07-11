// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      games:
          (json['games'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      profilePicture: json['profilePicture'] as String? ?? '',
      city: json['city'] as String? ?? '',
      state: json['state'] as String? ?? '',
      areaCode: json['areaCode'] as String? ?? '',
      fcmToken: json['fcmToken'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'displayName': instance.displayName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'games': instance.games,
      'profilePicture': instance.profilePicture,
      'city': instance.city,
      'state': instance.state,
      'areaCode': instance.areaCode,
      'fcmToken': instance.fcmToken,
    };
