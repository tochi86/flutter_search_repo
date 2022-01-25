// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repo _$$_RepoFromJson(Map<String, dynamic> json) => _$_Repo(
      id: const RepoIdConverter().fromJson(json['id'] as int),
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      stargazersCount: json['stargazers_count'] as int,
      owner: User.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RepoToJson(_$_Repo instance) => <String, dynamic>{
      'id': const RepoIdConverter().toJson(instance.id),
      'name': instance.name,
      'full_name': instance.fullName,
      'stargazers_count': instance.stargazersCount,
      'owner': instance.owner,
    };
