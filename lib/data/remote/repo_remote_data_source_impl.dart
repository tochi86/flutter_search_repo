import 'dart:convert';

import 'package:riverpod/riverpod.dart';
import 'package:search_repo/data/model/repo.dart';
import 'package:search_repo/data/model/search_repo_response.dart';
import 'package:search_repo/data/remote/http_client/http_client.dart';
import 'package:search_repo/data/remote/http_client/http_client_impl.dart';

import 'repo_remote_data_source.dart';

final repoRemoteDataSourceProvider =
    Provider<RepoRemoteDataSource>((ref) => RepoRemoteDataSourceImpl(ref.read));

class RepoRemoteDataSourceImpl implements RepoRemoteDataSource {
  final Reader _reader;
  RepoRemoteDataSourceImpl(this._reader);

  late final HttpClient _httpClient = _reader(httpClientProvider);

  @override
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
