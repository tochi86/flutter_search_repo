import 'package:search_repo/data/model/repo.dart';

abstract class RepoRepository {
  Future<List<Repo>> search({required String query});
}
