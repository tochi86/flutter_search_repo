import 'package:search_repo/data/model/repo.dart';

abstract class RepoRemoteDataSource {
  Future<List<Repo>> search({required String query});
}
