import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_repo/ui/repo_detail/repo_detail_page.dart';
import 'package:search_repo/ui/repo_list/repo_list_view_model.dart';

class RepoListPage extends ConsumerWidget {
  const RepoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(repoListViewModelProvider);
    final repoList =
        ref.watch(repoListViewModelProvider.select((value) => value.repoList));

    return Scaffold(
      appBar: AppBar(
        title: const Text('リポジトリ検索'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '検索文字列を入力',
                ),
                onSubmitted: (value) {
                  viewModel.searchRepo(value);
                },
              ),
            ),
            Expanded(
              child: repoList.when(
                (value) => ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    final repo = value[index];
                    return Card(
                      child: ListTile(
                        title: Text(repo.fullName),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return RepoDetailPage(repo);
                            }),
                          );
                        },
                      ),
                    );
                  },
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (String? message) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      if (message != null)
                        Text(message, textAlign: TextAlign.center),
                      ElevatedButton(
                        child: const Text('リトライ'),
                        onPressed: () {
                          viewModel.retry();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
