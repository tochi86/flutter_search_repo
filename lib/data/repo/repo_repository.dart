import 'package:riverpod/riverpod.dart';
import 'package:search_repo/data/repo/remote/repo_remote_data_source.dart';
import 'package:search_repo/model/repo/repo.dart';

final repoRepositoryProvider = Provider((ref) => RepoRepository(ref.read));

class RepoRepository {
  RepoRepository(this._reader);

  final Reader _reader;

  late final _repoRemoteDataSource = _reader(repoRemoteDataSourceProvider);

  Future<List<Repo>> search({required String query}) {
    return _repoRemoteDataSource.search(query: query);
  }
}
