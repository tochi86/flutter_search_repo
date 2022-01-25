import 'package:flutter/material.dart';
import 'package:search_repo/gen/l10n.dart';
import 'package:search_repo/model/repo/repo.dart';

class RepoDetailPage extends StatelessWidget {
  const RepoDetailPage(this._repo, {Key? key}) : super(key: key);

  final Repo _repo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_repo.fullName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_repo.name, style: const TextStyle(fontSize: 36)),
            const SizedBox(height: 16),
            Text(L10n.of(context)!.repoDetailPageStars(_repo.stargazersCount),
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 32),
            Image(
              image: NetworkImage(_repo.owner.avatarUrl),
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 16),
            Text(L10n.of(context)!.repoDetailPageBy(_repo.owner.login),
                style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
