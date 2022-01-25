// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  const _$_RepoId({required this.value});

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
  const factory _RepoId({required int value}) = _$_RepoId;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$RepoIdCopyWith<_RepoId> get copyWith => throw _privateConstructorUsedError;
}
