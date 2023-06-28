// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatModel _$$_ChatModelFromJson(Map<String, dynamic> json) => _$_ChatModel(
      id: json['id'] as String? ?? '',
      offer: json['offer'] == null
          ? OfferModel.empty
          : OfferModel.fromJson(json['offer'] as Map<String, dynamic>),
      card: const CardModelSerializer().fromJson(json['card']),
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$_ChatModelToJson(_$_ChatModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'offer': instance.offer,
      'card': _$JsonConverterToJson<dynamic, CardModel>(
          instance.card, const CardModelSerializer().toJson),
      'users': instance.users,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
