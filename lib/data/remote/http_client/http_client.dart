import 'response.dart';

abstract class HttpClient {
  Future<Response> get(Uri url);
}
