import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_repo/model/repo/repo_id.dart';
import 'package:search_repo/model/user/user.dart';

part 'repo.freezed.dart';
part 'repo.g.dart';

@freezed
class Repo with _$Repo {
  const factory Repo({
    @RepoIdConverter() required RepoId id,
    required String name,
    required String fullName,
    required int stargazersCount,
    required User owner,
  }) = _Repo;

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}
