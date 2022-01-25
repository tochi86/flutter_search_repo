// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserIdTearOff {
  const _$UserIdTearOff();

  _UserId call({required int value}) {
    return _UserId(
      value: value,
    );
  }
}

/// @nodoc
const $UserId = _$UserIdTearOff();

/// @nodoc
mixin _$UserId {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserIdCopyWith<UserId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdCopyWith<$Res> {
  factory $UserIdCopyWith(UserId value, $Res Function(UserId) then) =
      _$UserIdCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$UserIdCopyWithImpl<$Res> implements $UserIdCopyWith<$Res> {
  _$UserIdCopyWithImpl(this._value, this._then);

  final UserId _value;
  // ignore: unused_field
  final $Res Function(UserId) _then;

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
abstract class _$UserIdCopyWith<$Res> implements $UserIdCopyWith<$Res> {
  factory _$UserIdCopyWith(_UserId value, $Res Function(_UserId) then) =
      __$UserIdCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$UserIdCopyWithImpl<$Res> extends _$UserIdCopyWithImpl<$Res>
    implements _$UserIdCopyWith<$Res> {
  __$UserIdCopyWithImpl(_UserId _value, $Res Function(_UserId) _then)
      : super(_value, (v) => _then(v as _UserId));

  @override
  _UserId get _value => super._value as _UserId;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_UserId(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UserId implements _UserId {
  const _$_UserId({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'UserId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserId &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$UserIdCopyWith<_UserId> get copyWith =>
      __$UserIdCopyWithImpl<_UserId>(this, _$identity);
}

abstract class _UserId implements UserId {
  const factory _UserId({required int value}) = _$_UserId;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$UserIdCopyWith<_UserId> get copyWith => throw _privateConstructorUsedError;
}
