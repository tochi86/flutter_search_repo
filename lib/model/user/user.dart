import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_repo/model/user/user_id.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @UserIdConverter() required UserId id,
    required String login,
    required String avatarUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
