// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshTokenModel _$RefreshTokenModelFromJson(Map<String, dynamic> json) =>
    _RefreshTokenModel(
      token: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$RefreshTokenModelToJson(_RefreshTokenModel instance) =>
    <String, dynamic>{
      'accessToken': instance.token,
      'refreshToken': instance.refreshToken,
    };
