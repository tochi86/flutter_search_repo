import 'package:http/http.dart' as http;
import 'package:riverpod/riverpod.dart';
import 'package:search_repo/http_client/response.dart';

final httpClientProvider = Provider((_) => HttpClient());

class HttpClient {
  final _client = http.Client();

  Future<Response> get(Uri url) async {
    final httpResponse = await _client.get(url);
    return Response(httpResponse.body, httpResponse.statusCode);
  }
}
