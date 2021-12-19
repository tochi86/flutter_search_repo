import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'repo.freezed.dart';
part 'repo.g.dart';

@freezed
class Repo with _$Repo {
  factory Repo({
    required final int id,
    required final String name,
    @JsonKey(name: 'full_name') required final String fullName,
    @JsonKey(name: 'stargazers_count') required final int stargazersCount,
    required final User owner,
  }) = _Repo;

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}
