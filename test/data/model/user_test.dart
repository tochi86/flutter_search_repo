import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:search_repo/data/model/user.dart';

void main() {
  test('User fromJson', () {
    final json = jsonDecode('''
    {
      "login": "apple",
      "id": 10639145,
      "avatar_url": "https://avatars.githubusercontent.com/u/10639145?v=4"
    }
    ''');

    final user = User.fromJson(json);

    expect(user.id, UserId(value: 10639145));
    expect(user.login, 'apple');
    expect(
        user.avatarUrl, 'https://avatars.githubusercontent.com/u/10639145?v=4');
  });
}
