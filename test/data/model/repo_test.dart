import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:search_repo/data/model/repo.dart';
import 'package:search_repo/data/model/user.dart';

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

    expect(repo.id, RepoId(value: 44838949));
    expect(repo.name, 'swift');
    expect(repo.fullName, 'apple/swift');
    expect(repo.stargazersCount, 58245);
    expect(repo.owner.id, UserId(value: 10639145));
  });
}
