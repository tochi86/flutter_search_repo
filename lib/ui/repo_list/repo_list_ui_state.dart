import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_repo/model/repo/repo.dart';

part 'repo_list_ui_state.freezed.dart';

@freezed
class RepoListUiState with _$RepoListUiState {
  const factory RepoListUiState({
    @Default(AsyncData([])) AsyncValue<List<Repo>> repoList,
  }) = _RepoListUiState;
}
