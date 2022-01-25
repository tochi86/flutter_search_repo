import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_id.freezed.dart';

@freezed
class UserId with _$UserId {
  const factory UserId({required int value}) = _UserId;
}

class UserIdConverter implements JsonConverter<UserId, int> {
  const UserIdConverter();

  @override
  UserId fromJson(int json) => UserId(value: json);

  @override
  int toJson(UserId object) => object.value;
}
