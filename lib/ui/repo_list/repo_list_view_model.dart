import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_repo/data/repository/repo_repository.dart';
import 'package:search_repo/data/repository/repo_repository_impl.dart';
import 'package:search_repo/ui/repo_list/repo_list_ui_state.dart';

final repoListViewModelProvider =
    StateNotifierProvider.autoDispose<RepoListViewModel, RepoListUiState>(
        (ref) => RepoListViewModel(ref.read));

class RepoListViewModel extends StateNotifier<RepoListUiState> {
  final Reader _reader;
  RepoListViewModel(this._reader) : super(const RepoListUiState());

  late final RepoRepository _repository = _reader(repoRepositoryProvider);

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
