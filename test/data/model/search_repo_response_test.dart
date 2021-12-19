import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:search_repo/data/model/search_repo_response.dart';

void main() {
  test('SearchRepoResponse fromJson', () {
    final json = jsonDecode('''
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
    ''');

    final response = SearchRepoResponse.fromJson(json);

    expect(response.totalCount, 225364);
    expect(response.items.length, 3);
    expect(response.items.first.id, 44838949);
  });
}
