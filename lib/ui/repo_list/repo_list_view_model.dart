import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_repo/data/model/repo.dart';
import 'package:search_repo/data/repository/repo_repository.dart';
import 'package:search_repo/data/repository/repo_repository_impl.dart';

final repoListViewModelProvider =
    ChangeNotifierProvider.autoDispose((ref) => RepoListViewModel(ref.read));

class RepoListViewModel extends ChangeNotifier {
  final Reader _reader;
  RepoListViewModel(this._reader);

  late final RepoRepository _repository = _reader(repoRepositoryProvider);

  List<Repo> _repoList = [];
  List<Repo> get repoList => _repoList;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  searchRepo(String text) async {
    if (text.isEmpty) {
      return;
    }

    _repoList = [];
    _errorMessage = null;
    notifyListeners();

    try {
      _repoList = await _repository.search(query: text);
      notifyListeners();
    } catch (e) {
      _errorMessage = e.toString();
      notifyListeners();
    }
  }
}
