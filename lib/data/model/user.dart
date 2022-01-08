import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @_UserIdConverter() required final UserId id,
    required final String login,
    @JsonKey(name: 'avatar_url') required final String avatarUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserId with _$UserId {
  const factory UserId({required final int value}) = _UserId;
}

class _UserIdConverter implements JsonConverter<UserId, int> {
  const _UserIdConverter();

  @override
  UserId fromJson(int json) => UserId(value: json);

  @override
  int toJson(UserId object) => object.value;
}
