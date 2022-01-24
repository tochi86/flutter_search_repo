import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_repo/gen/l10n.dart';
import 'package:search_repo/ui/repo_detail/repo_detail_page.dart';
import 'package:search_repo/ui/repo_list/repo_list_view_model.dart';

class RepoListPage extends ConsumerWidget {
  const RepoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(repoListViewModelProvider.notifier);
    final repoList =
        ref.watch(repoListViewModelProvider.select((state) => state.repoList));

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.repoListPageTitle),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  hintText: L10n.of(context)!.repoListPageHintText,
                ),
                onSubmitted: (value) {
                  viewModel.searchRepo(value);
                },
              ),
            ),
            Expanded(
              child: repoList.when(
                data: (value) => ListView.builder(
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
                error: (e, s) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(e.toString(), textAlign: TextAlign.center),
                      ElevatedButton(
                        child: Text(L10n.of(context)!.repoListPageRetry),
                        onPressed: () {
                          viewModel.retry();
                        },
                      ),
                    ],
                  ),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
