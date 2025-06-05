// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameUserImpl _$$GameUserImplFromJson(Map<String, dynamic> json) =>
    _$GameUserImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      score: (json['score'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$GameUserImplToJson(_$GameUserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'nickname': instance.nickname,
      'score': instance.score,
    };
