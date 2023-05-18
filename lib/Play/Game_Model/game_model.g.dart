// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameModel _$$_GameModelFromJson(Map<String, dynamic> json) => _$_GameModel(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      cost: (json['cost'] as num?)?.toDouble() ?? 0.00,
      location: json['location'] as String? ?? '',
      day: json['day'] == null ? null : DateTime.parse(json['day'] as String),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      maxPlayerCount: json['maxPlayerCount'] as int? ?? 4,
      minPlayerCount: json['minPlayerCount'] as int? ?? 2,
      players: (json['players'] as List<dynamic>?)
              ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      format: $enumDecodeNullable(_$GameFormatsEnumMap, json['format']) ??
          GameFormats.Commander,
    );

Map<String, dynamic> _$$_GameModelToJson(_$_GameModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'cost': instance.cost,
      'location': instance.location,
      'day': instance.day?.toIso8601String(),
      'time': instance.time?.toIso8601String(),
      'maxPlayerCount': instance.maxPlayerCount,
      'minPlayerCount': instance.minPlayerCount,
      'players': instance.players,
      'format': _$GameFormatsEnumMap[instance.format]!,
    };

const _$GameFormatsEnumMap = {
  GameFormats.Commander: 'Commander',
  GameFormats.Draft: 'Draft',
  GameFormats.Standard: 'Standard',
  GameFormats.Sealed: 'Sealed',
  GameFormats.Pioneer: 'Pioneer',
  GameFormats.Modern: 'Modern',
  GameFormats.Historic: 'Historic',
  GameFormats.Brawl: 'Brawl',
  GameFormats.Pauper: 'Pauper',
  GameFormats.Oathbreaker: 'Oathbreaker',
  GameFormats.Legacy: 'Legacy',
  GameFormats.Vintage: 'Vintage',
};
