import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:search_repo/gen/l10n.dart';
import 'package:search_repo/model/repo/repo.dart';
import 'package:search_repo/model/repo/repo_id.dart';
import 'package:search_repo/model/user/user.dart';
import 'package:search_repo/model/user/user_id.dart';
import 'package:search_repo/ui/repo_list/repo_list_page.dart';
import 'package:search_repo/ui/repo_list/repo_list_ui_state.dart';
import 'package:search_repo/ui/repo_list/repo_list_view_model.dart';

void main() {
  testWidgets('RepoListPage Loading', (tester) async {
    await tester.pumpWidget(
      _mockStateWidget(
        const RepoListUiState(
          repoList: AsyncLoading(),
        ),
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('RepoListPage Data', (tester) async {
    await tester.pumpWidget(_mockStateWidget(
      RepoListUiState(
        repoList: AsyncData([
          _dummyRepo(1, 'a'),
          _dummyRepo(2, 'b'),
          _dummyRepo(3, 'c'),
          _dummyRepo(4, 'd'),
          _dummyRepo(5, 'e'),
        ]),
      ),
    ));

    expect(find.byType(Card), findsNWidgets(5));
  });

  testWidgets('RepoListPage Error', (tester) async {
    final exception = Exception('abc');
    await tester.pumpWidget(
      _mockStateWidget(
        RepoListUiState(
          repoList: AsyncError(exception),
        ),
      ),
    );

    expect(find.text(exception.toString()), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}

Widget _mockStateWidget(RepoListUiState state) {
  return ProviderScope(
    overrides: [
      repoListViewModelProvider.overrideWithProvider(
        StateNotifierProvider.autoDispose<RepoListViewModel, RepoListUiState>(
          (ref) => RepoListViewModel.mock(ref.read, state),
        ),
      ),
    ],
    child: const MaterialApp(
      locale: Locale('en_US'),
      localizationsDelegates: L10n.localizationsDelegates,
      home: RepoListPage(),
    ),
  );
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
