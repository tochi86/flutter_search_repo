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
    final errorMessage = ref
        .watch(repoListViewModelProvider.select((value) => value.errorMessage));

    return Scaffold(
      appBar: AppBar(
        title: const Text('リポジトリ検索'),
      ),
      body: (errorMessage != null)
          ? Text(errorMessage.toString())
          : SafeArea(
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
                    child: ListView.builder(
                      itemCount: repoList.length,
                      itemBuilder: (context, index) {
                        final repo = repoList[index];
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
                  ),
                ],
              ),
            ),
    );
  }
}
