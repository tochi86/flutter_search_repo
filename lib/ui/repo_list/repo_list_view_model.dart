import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_repo/data/repo/repo_repository.dart';
import 'package:search_repo/ui/repo_list/repo_list_ui_state.dart';

final repoListViewModelProvider =
    StateNotifierProvider.autoDispose<RepoListViewModel, RepoListUiState>(
        (ref) => RepoListViewModel(ref.read));

class RepoListViewModel extends StateNotifier<RepoListUiState> {
  RepoListViewModel(this._reader) : super(const RepoListUiState());

  RepoListViewModel.mock(this._reader,
      [RepoListUiState state = const RepoListUiState()])
      : super(state);

  final Reader _reader;

  late final _repository = _reader(repoRepositoryProvider);

  String _searchText = '';

  Future<void> searchRepo(String text) async {
    if (text.isEmpty || text == _searchText) {
      return;
    }

    _searchText = text;
    state = state.copyWith(repoList: const AsyncLoading());

    try {
      state = state.copyWith(
        repoList: AsyncData(await _repository.search(query: text)),
      );
    } on Exception catch (e) {
      state = state.copyWith(repoList: AsyncError(e));
    }
  }

  Future<void> retry() async {
    final text = _searchText;
    _searchText = '';
    await searchRepo(text);
  }
}
