import 'package:riverpod/riverpod.dart';
import 'package:search_repo/data/model/repo.dart';
import 'package:search_repo/data/remote/repo_remote_data_source.dart';
import 'package:search_repo/data/remote/repo_remote_data_source_impl.dart';
import 'package:search_repo/data/repository/repo_repository.dart';

final repoRepositoryProvider =
    Provider<RepoRepository>((ref) => RepoRepositoryImpl(ref.read));

class RepoRepositoryImpl implements RepoRepository {
  final Reader _reader;
  RepoRepositoryImpl(this._reader);

  late final RepoRemoteDataSource _repoRemoteDataSource =
      _reader(repoRemoteDataSourceProvider);

  @override
  Future<List<Repo>> search({required String query}) {
    return _repoRemoteDataSource.search(query: query);
  }
}
