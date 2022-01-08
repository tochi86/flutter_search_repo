// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Repo _$RepoFromJson(Map<String, dynamic> json) {
  return _Repo.fromJson(json);
}

/// @nodoc
class _$RepoTearOff {
  const _$RepoTearOff();

  _Repo call(
      {@_RepoIdConverter() required RepoId id,
      required String name,
      @JsonKey(name: 'full_name') required String fullName,
      @JsonKey(name: 'stargazers_count') required int stargazersCount,
      required User owner}) {
    return _Repo(
      id: id,
      name: name,
      fullName: fullName,
      stargazersCount: stargazersCount,
      owner: owner,
    );
  }

  Repo fromJson(Map<String, Object?> json) {
    return Repo.fromJson(json);
  }
}

/// @nodoc
const $Repo = _$RepoTearOff();

/// @nodoc
mixin _$Repo {
  @_RepoIdConverter()
  RepoId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  User get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoCopyWith<Repo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoCopyWith<$Res> {
  factory $RepoCopyWith(Repo value, $Res Function(Repo) then) =
      _$RepoCopyWithImpl<$Res>;
  $Res call(
      {@_RepoIdConverter() RepoId id,
      String name,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      User owner});

  $RepoIdCopyWith<$Res> get id;
  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepoCopyWithImpl<$Res> implements $RepoCopyWith<$Res> {
  _$RepoCopyWithImpl(this._value, this._then);

  final Repo _value;
  // ignore: unused_field
  final $Res Function(Repo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? stargazersCount = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as RepoId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $RepoIdCopyWith<$Res> get id {
    return $RepoIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $UserCopyWith<$Res> get owner {
    return $UserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$RepoCopyWith<$Res> implements $RepoCopyWith<$Res> {
  factory _$RepoCopyWith(_Repo value, $Res Function(_Repo) then) =
      __$RepoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@_RepoIdConverter() RepoId id,
      String name,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      User owner});

  @override
  $RepoIdCopyWith<$Res> get id;
  @override
  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class __$RepoCopyWithImpl<$Res> extends _$RepoCopyWithImpl<$Res>
    implements _$RepoCopyWith<$Res> {
  __$RepoCopyWithImpl(_Repo _value, $Res Function(_Repo) _then)
      : super(_value, (v) => _then(v as _Repo));

  @override
  _Repo get _value => super._value as _Repo;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? stargazersCount = freezed,
    Object? owner = freezed,
  }) {
    return _then(_Repo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as RepoId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repo implements _Repo {
  _$_Repo(
      {@_RepoIdConverter() required this.id,
      required this.name,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      required this.owner});

  factory _$_Repo.fromJson(Map<String, dynamic> json) => _$$_RepoFromJson(json);

  @override
  @_RepoIdConverter()
  final RepoId id;
  @override
  final String name;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  final User owner;

  @override
  String toString() {
    return 'Repo(id: $id, name: $name, fullName: $fullName, stargazersCount: $stargazersCount, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Repo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.stargazersCount, stargazersCount) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(stargazersCount),
      const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$RepoCopyWith<_Repo> get copyWith =>
      __$RepoCopyWithImpl<_Repo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepoToJson(this);
  }
}

abstract class _Repo implements Repo {
  factory _Repo(
      {@_RepoIdConverter() required RepoId id,
      required String name,
      @JsonKey(name: 'full_name') required String fullName,
      @JsonKey(name: 'stargazers_count') required int stargazersCount,
      required User owner}) = _$_Repo;

  factory _Repo.fromJson(Map<String, dynamic> json) = _$_Repo.fromJson;

  @override
  @_RepoIdConverter()
  RepoId get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  User get owner;
  @override
  @JsonKey(ignore: true)
  _$RepoCopyWith<_Repo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$RepoIdTearOff {
  const _$RepoIdTearOff();

  _RepoId call({required int value}) {
    return _RepoId(
      value: value,
    );
  }
}

/// @nodoc
const $RepoId = _$RepoIdTearOff();

/// @nodoc
mixin _$RepoId {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoIdCopyWith<RepoId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoIdCopyWith<$Res> {
  factory $RepoIdCopyWith(RepoId value, $Res Function(RepoId) then) =
      _$RepoIdCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$RepoIdCopyWithImpl<$Res> implements $RepoIdCopyWith<$Res> {
  _$RepoIdCopyWithImpl(this._value, this._then);

  final RepoId _value;
  // ignore: unused_field
  final $Res Function(RepoId) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RepoIdCopyWith<$Res> implements $RepoIdCopyWith<$Res> {
  factory _$RepoIdCopyWith(_RepoId value, $Res Function(_RepoId) then) =
      __$RepoIdCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$RepoIdCopyWithImpl<$Res> extends _$RepoIdCopyWithImpl<$Res>
    implements _$RepoIdCopyWith<$Res> {
  __$RepoIdCopyWithImpl(_RepoId _value, $Res Function(_RepoId) _then)
      : super(_value, (v) => _then(v as _RepoId));

  @override
  _RepoId get _value => super._value as _RepoId;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_RepoId(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RepoId implements _RepoId {
  _$_RepoId({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'RepoId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepoId &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$RepoIdCopyWith<_RepoId> get copyWith =>
      __$RepoIdCopyWithImpl<_RepoId>(this, _$identity);
}

abstract class _RepoId implements RepoId {
  factory _RepoId({required int value}) = _$_RepoId;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$RepoIdCopyWith<_RepoId> get copyWith => throw _privateConstructorUsedError;
}
