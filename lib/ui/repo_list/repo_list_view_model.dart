import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_repo/data/model/repo.dart';
import 'package:search_repo/data/repository/repo_repository.dart';
import 'package:search_repo/data/repository/repo_repository_impl.dart';
import 'package:search_repo/ui/common/union.dart';

final repoListViewModelProvider =
    ChangeNotifierProvider.autoDispose((ref) => RepoListViewModel(ref.read));

class RepoListViewModel extends ChangeNotifier {
  final Reader _reader;
  RepoListViewModel(this._reader);

  late final RepoRepository _repository = _reader(repoRepositoryProvider);

  Union<List<Repo>> _repoList = const Union([]);
  Union<List<Repo>> get repoList => _repoList;

  String _searchText = '';

  searchRepo(String text) async {
    if (text.isEmpty || text == _searchText) {
      return;
    }

    _searchText = text;
    _repoList = const Union.loading();
    notifyListeners();

    try {
      _repoList = Union(await _repository.search(query: text));
      notifyListeners();
    } catch (e) {
      _repoList = Union.error(e.toString());
      notifyListeners();
    }
  }

  retry() {
    final text = _searchText;
    _searchText = '';
    searchRepo(text);
  }
}
