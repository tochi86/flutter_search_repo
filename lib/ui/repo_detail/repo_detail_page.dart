import 'package:flutter/material.dart';
import 'package:search_repo/data/model/repo.dart';
import 'package:search_repo/gen/l10n.dart';

class RepoDetailPage extends StatelessWidget {
  final Repo repo;
  const RepoDetailPage(this.repo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(repo.fullName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(repo.name, style: const TextStyle(fontSize: 36)),
            const SizedBox(height: 16),
            Text(L10n.of(context)!.repoDetailPageStars(repo.stargazersCount),
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 32),
            Image(
              image: NetworkImage(repo.owner.avatarUrl),
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 16),
            Text(L10n.of(context)!.repoDetailPageBy(repo.owner.login),
                style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
