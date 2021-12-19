import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RepoListPage extends ConsumerWidget {
  const RepoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リポジトリ検索'),
      ),
      body: const Center(
        child: Text('リポジトリ一覧'),
      ),
    );
  }
}
