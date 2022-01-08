import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod/riverpod.dart';
import 'package:search_repo/data/model/repo.dart';
import 'package:search_repo/data/remote/http_client/http_client.dart';
import 'package:search_repo/data/remote/http_client/http_client_impl.dart';
import 'package:search_repo/data/remote/http_client/response.dart';
import 'package:search_repo/data/remote/repo_remote_data_source.dart';
import 'package:search_repo/data/remote/repo_remote_data_source_impl.dart';

class MockHttpClient extends Mock implements HttpClient {}

void main() {
  late MockHttpClient httpClient;
  late RepoRemoteDataSource dataSource;

  setUpAll(() {
    registerFallbackValue(Uri());
  });

  setUp(() {
    httpClient = MockHttpClient();
    final container = ProviderContainer(
      overrides: [httpClientProvider.overrideWithValue(httpClient)],
    );
    dataSource = container.read(repoRemoteDataSourceProvider);
  });

  test('英語で検索すると、正しいクエリが送信され、正しい値が返ってくる', () async {
    when(() => httpClient.get(any())).thenAnswer((_) async => _response200());
    final repos = await dataSource.search(query: 'swift');
    verify(() => httpClient.get(
            Uri.parse('https://api.github.com/search/repositories?q=swift')))
        .called(1);
    expect(repos.length, 3);
    expect(repos.first.id, RepoId(value: 44838949));
  });

  test('日本語で検索すると、正しくエンコーディングされたクエリが送信される', () async {
    when(() => httpClient.get(any())).thenAnswer((_) async => _response200());
    await dataSource.search(query: 'あいうえお');
    verify(() => httpClient.get(Uri.parse(
            'https://api.github.com/search/repositories?q=%E3%81%82%E3%81%84%E3%81%86%E3%81%88%E3%81%8A')))
        .called(1);
  });

  test('404エラーが返ってきた時は、例外が投げられる', () async {
    when(() => httpClient.get(any())).thenAnswer((_) async => _response404());
    expect(dataSource.search(query: 'query'), throwsException);
  });
}

Response _response200() {
  const body = '''
  {
    "total_count": 225364,
    "items": [
      {
        "id": 44838949,
        "name": "swift",
        "full_name": "apple/swift",
        "owner": {
          "login": "apple",
          "id": 10639145,
          "avatar_url": "https://avatars.githubusercontent.com/u/10639145?v=4"
        },
        "stargazers_count": 58245
      },
      {
        "id": 790019,
        "name": "swift",
        "full_name": "openstack/swift",
        "owner": {
          "login": "openstack",
          "id": 324574,
          "avatar_url": "https://avatars.githubusercontent.com/u/324574?v=4"
        },
        "stargazers_count": 2253
      },
      {
        "id": 130902948,
        "name": "swift",
        "full_name": "tensorflow/swift",
        "owner": {
          "login": "tensorflow",
          "id": 15658638,
          "avatar_url": "https://avatars.githubusercontent.com/u/15658638?v=4"
        },
        "stargazers_count": 6037
      }
    ]
  }
  ''';
  return Response(body, 200);
}

Response _response404() {
  const body = '''
  {
    "message": "Not Found",
    "documentation_url": "https://docs.github.com/rest"
  }
  ''';
  return Response(body, 404);
}
