import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:search_repo/model/repo/repo.dart';
import 'package:search_repo/model/repo/repo_id.dart';
import 'package:search_repo/model/user/user_id.dart';

void main() {
  test('Repo fromJson', () {
    final json = jsonDecode('''
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
    }
    ''');

    final repo = Repo.fromJson(json);

    expect(repo.id, const RepoId(value: 44838949));
    expect(repo.name, 'swift');
    expect(repo.fullName, 'apple/swift');
    expect(repo.stargazersCount, 58245);
    expect(repo.owner.id, const UserId(value: 10639145));
  });
}
