
import 'package:freezed_annotation/freezed_annotation.dart';

import 'repo.dart';

part 'search_repo_response.freezed.dart';
part 'search_repo_response.g.dart';

@freezed
class SearchRepoResponse with _$SearchRepoResponse {
  const factory SearchRepoResponse({
    @JsonKey(name: 'total_count') required final int totalCount,
    required final List<Repo> items,
  }) = _SearchRepoResponse;

  factory SearchRepoResponse.fromJson(Map<String, dynamic> json) =>
			_$SearchRepoResponseFromJson(json);
}
