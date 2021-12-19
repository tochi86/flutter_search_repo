import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              viewModel.searchRepo('swift');
            },
          ),
        ],
      ),
      body: (errorMessage != null)
          ? Text(errorMessage.toString())
          : ListView.builder(
              itemCount: repoList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(repoList[index].fullName),
                  ),
                );
              },
            ),
    );
  }
}
