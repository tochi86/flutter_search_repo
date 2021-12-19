import 'package:flutter/material.dart';
import 'package:search_repo/data/model/repo.dart';

class RepoDetailPage extends StatelessWidget {
  final Repo repo;
  const RepoDetailPage(this.repo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リポジトリ詳細'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(repo.name, style: const TextStyle(fontSize: 36)),
            const SizedBox(height: 16),
            Text(repo.stargazersCount.toString() + ' Stars',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 32),
            Image(
              image: NetworkImage(repo.owner.avatarUrl),
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 16),
            Text('by ' + repo.owner.login,
                style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
