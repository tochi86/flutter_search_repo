import 'dart:convert';

import 'package:riverpod/riverpod.dart';
import 'package:search_repo/data/repo/remote/search_repo_response.dart';
import 'package:search_repo/http_client/http_client.dart';
import 'package:search_repo/model/repo/repo.dart';

final repoRemoteDataSourceProvider =
    Provider((ref) => RepoRemoteDataSource(ref.read));

class RepoRemoteDataSource {
  RepoRemoteDataSource(this._reader);

  final Reader _reader;

  late final _httpClient = _reader(httpClientProvider);

  Future<List<Repo>> search({required String query}) async {
    final url = Uri.https(
      'api.github.com',
      '/search/repositories',
      {'q': query},
    );
    final response = await _httpClient.get(url);

    if (response.statusCode == 200) {
      return SearchRepoResponse.fromJson(jsonDecode(response.body)).items;
    } else {
      throw Exception('Failed to load repo');
    }
  }
}
