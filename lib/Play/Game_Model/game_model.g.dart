// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameModel _$$_GameModelFromJson(Map<String, dynamic> json) => _$_GameModel(
      creator: json['creator'] == null
          ? null
          : UserModel.fromJson(json['creator'] as Map<String, dynamic>),
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      cost: json['cost'] as int? ?? 0,
      location: json['location'] as String? ?? '',
      dateAndTime: const TimestampSerializer().fromJson(json['dateAndTime']),
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
      'creator': instance.creator,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'cost': instance.cost,
      'location': instance.location,
      'dateAndTime': _$JsonConverterToJson<dynamic, DateTime>(
          instance.dateAndTime, const TimestampSerializer().toJson),
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

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
