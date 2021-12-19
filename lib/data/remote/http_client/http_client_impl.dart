import 'package:http/http.dart' as http;
import 'package:riverpod/riverpod.dart';

import 'http_client.dart';
import 'response.dart';

final httpClientProvider = Provider<HttpClient>((_) => HttpClientImpl());

class HttpClientImpl implements HttpClient {
  final _client = http.Client();

  @override
  Future<Response> get(Uri url) async {
    final httpResponse = await _client.get(url);
    return Response(httpResponse.body, httpResponse.statusCode);
  }
}
