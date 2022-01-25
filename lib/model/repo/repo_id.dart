import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_id.freezed.dart';

@freezed
class RepoId with _$RepoId {
  const factory RepoId({required int value}) = _RepoId;
}

class RepoIdConverter implements JsonConverter<RepoId, int> {
  const RepoIdConverter();

  @override
  RepoId fromJson(int json) => RepoId(value: json);

  @override
  int toJson(RepoId object) => object.value;
}
