import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:search_repo/data/model/repo.dart';
import 'package:search_repo/data/model/user.dart';
import 'package:search_repo/data/repository/repo_repository.dart';
import 'package:search_repo/data/repository/repo_repository_impl.dart';
import 'package:search_repo/ui/repo_list/repo_list_ui_state.dart';
import 'package:search_repo/ui/repo_list/repo_list_view_model.dart';

import '../../test_helper.dart';

class _MockRepoRepository extends Mock implements RepoRepository {}

void main() {
  late RepoListViewModel viewModel;

  late _MockRepoRepository repoRepository;
  late Listener<RepoListUiState> listener;
  late List<RepoListUiState> stateList;

  setUp(() {
    repoRepository = _MockRepoRepository();
    listener = Listener<RepoListUiState>();
    stateList = [const RepoListUiState(repoList: AsyncData([]))];

    final container = ProviderContainer(
      overrides: [repoRepositoryProvider.overrideWithValue(repoRepository)],
    );
    container.listen(
      repoListViewModelProvider,
      listener,
      fireImmediately: true,
    );

    viewModel = container.read(repoListViewModelProvider.notifier);
  });

  test('初期状態は空の配列を出力する', () async {
    verifyListener(listener, stateList);
  });

  test('検索成功時はLoading状態を経由して結果を出力する', () async {
    final repoList = [
      _dummyRepo(1, 'a'),
      _dummyRepo(2, 'b'),
      _dummyRepo(3, 'c'),
      _dummyRepo(4, 'd'),
      _dummyRepo(5, 'e'),
    ];
    when(() => repoRepository.search(query: 'abc'))
        .thenAnswer((_) async => repoList);

    await viewModel.searchRepo('abc');

    stateList.add(stateList.last.copyWith(repoList: const AsyncLoading()));
    stateList.add(stateList.last.copyWith(repoList: AsyncData(repoList)));
    verifyListener(listener, stateList);
  });

  test('検索失敗時はLoading状態を経由してエラーを出力する', () async {
    final exception = Exception('abc');
    when(() => repoRepository.search(query: 'abc')).thenThrow(exception);

    await viewModel.searchRepo('abc');

    stateList.add(stateList.last.copyWith(repoList: const AsyncLoading()));
    stateList.add(stateList.last.copyWith(repoList: AsyncError(exception)));
    verifyListener(listener, stateList);
  });

  test('検索失敗した後にリトライすると、同じ文字列で検索する', () async {
    final exception = Exception('abc');
    when(() => repoRepository.search(query: 'abc')).thenThrow(exception);

    await viewModel.searchRepo('abc');

    final repoList = [
      _dummyRepo(1, 'a'),
      _dummyRepo(2, 'b'),
      _dummyRepo(3, 'c'),
      _dummyRepo(4, 'd'),
      _dummyRepo(5, 'e'),
    ];
    when(() => repoRepository.search(query: 'abc'))
        .thenAnswer((_) async => repoList);

    await viewModel.retry();

    stateList.add(stateList.last.copyWith(repoList: const AsyncLoading()));
    stateList.add(stateList.last.copyWith(repoList: AsyncError(exception)));
    stateList.add(stateList.last.copyWith(repoList: const AsyncLoading()));
    stateList.add(stateList.last.copyWith(repoList: AsyncData(repoList)));
    verifyListener(listener, stateList);
  });
}

Repo _dummyRepo(int id, String name) {
  return Repo(
    id: RepoId(value: id),
    name: name,
    fullName: '$name/$id',
    stargazersCount: 0,
    owner: User(
      id: UserId(value: id),
      login: name,
      avatarUrl: 'https://example.com',
    ),
  );
}
