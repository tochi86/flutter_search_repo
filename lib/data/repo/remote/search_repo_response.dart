import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_repo/model/repo/repo.dart';

part 'search_repo_response.freezed.dart';
part 'search_repo_response.g.dart';

@freezed
class SearchRepoResponse with _$SearchRepoResponse {
  const factory SearchRepoResponse({
    required int totalCount,
    required List<Repo> items,
  }) = _SearchRepoResponse;

  factory SearchRepoResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchRepoResponseFromJson(json);
}
