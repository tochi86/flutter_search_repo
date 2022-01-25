// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchRepoResponse _$$_SearchRepoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchRepoResponse(
      totalCount: json['total_count'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => Repo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchRepoResponseToJson(
        _$_SearchRepoResponse instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items,
    };
