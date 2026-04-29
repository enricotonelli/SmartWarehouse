// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenModel _$TokenModelFromJson(Map<String, dynamic> json) => _TokenModel(
  email: json['email'] as String,
  isRegistered: json['isRegistered'] as bool,
  agentId: json['agentId'] as String?,
);

Map<String, dynamic> _$TokenModelToJson(_TokenModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'isRegistered': instance.isRegistered,
      'agentId': instance.agentId,
    };
