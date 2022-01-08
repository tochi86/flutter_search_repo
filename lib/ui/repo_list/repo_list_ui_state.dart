import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_repo/data/model/repo.dart';

part 'repo_list_ui_state.freezed.dart';

@freezed
class RepoListUiState with _$RepoListUiState {
  factory RepoListUiState({
    @Default(AsyncData([])) final AsyncValue<List<Repo>> repoList,
  }) = _RepoListUiState;
}
