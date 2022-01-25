// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: const UserIdConverter().fromJson(json['id'] as int),
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': const UserIdConverter().toJson(instance.id),
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
    };
