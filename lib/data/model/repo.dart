import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'repo.freezed.dart';
part 'repo.g.dart';

@freezed
class Repo with _$Repo {
  const factory Repo({
    @_RepoIdConverter() required RepoId id,
    required String name,
    required String fullName,
    required int stargazersCount,
    required User owner,
  }) = _Repo;

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}

@freezed
class RepoId with _$RepoId {
  const factory RepoId({required int value}) = _RepoId;
}

class _RepoIdConverter implements JsonConverter<RepoId, int> {
  const _RepoIdConverter();

  @override
  RepoId fromJson(int json) => RepoId(value: json);

  @override
  int toJson(RepoId object) => object.value;
}
