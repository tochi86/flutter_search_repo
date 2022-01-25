// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_repo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRepoResponse _$SearchRepoResponseFromJson(Map<String, dynamic> json) {
  return _SearchRepoResponse.fromJson(json);
}

/// @nodoc
class _$SearchRepoResponseTearOff {
  const _$SearchRepoResponseTearOff();

  _SearchRepoResponse call(
      {required int totalCount, required List<Repo> items}) {
    return _SearchRepoResponse(
      totalCount: totalCount,
      items: items,
    );
  }

  SearchRepoResponse fromJson(Map<String, Object?> json) {
    return SearchRepoResponse.fromJson(json);
  }
}

/// @nodoc
const $SearchRepoResponse = _$SearchRepoResponseTearOff();

/// @nodoc
mixin _$SearchRepoResponse {
  int get totalCount => throw _privateConstructorUsedError;
  List<Repo> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRepoResponseCopyWith<SearchRepoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepoResponseCopyWith<$Res> {
  factory $SearchRepoResponseCopyWith(
          SearchRepoResponse value, $Res Function(SearchRepoResponse) then) =
      _$SearchRepoResponseCopyWithImpl<$Res>;
  $Res call({int totalCount, List<Repo> items});
}

/// @nodoc
class _$SearchRepoResponseCopyWithImpl<$Res>
    implements $SearchRepoResponseCopyWith<$Res> {
  _$SearchRepoResponseCopyWithImpl(this._value, this._then);

  final SearchRepoResponse _value;
  // ignore: unused_field
  final $Res Function(SearchRepoResponse) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
    ));
  }
}

/// @nodoc
abstract class _$SearchRepoResponseCopyWith<$Res>
    implements $SearchRepoResponseCopyWith<$Res> {
  factory _$SearchRepoResponseCopyWith(
          _SearchRepoResponse value, $Res Function(_SearchRepoResponse) then) =
      __$SearchRepoResponseCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount, List<Repo> items});
}

/// @nodoc
class __$SearchRepoResponseCopyWithImpl<$Res>
    extends _$SearchRepoResponseCopyWithImpl<$Res>
    implements _$SearchRepoResponseCopyWith<$Res> {
  __$SearchRepoResponseCopyWithImpl(
      _SearchRepoResponse _value, $Res Function(_SearchRepoResponse) _then)
      : super(_value, (v) => _then(v as _SearchRepoResponse));

  @override
  _SearchRepoResponse get _value => super._value as _SearchRepoResponse;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? items = freezed,
  }) {
    return _then(_SearchRepoResponse(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchRepoResponse implements _SearchRepoResponse {
  const _$_SearchRepoResponse({required this.totalCount, required this.items});

  factory _$_SearchRepoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchRepoResponseFromJson(json);

  @override
  final int totalCount;
  @override
  final List<Repo> items;

  @override
  String toString() {
    return 'SearchRepoResponse(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchRepoResponse &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$SearchRepoResponseCopyWith<_SearchRepoResponse> get copyWith =>
      __$SearchRepoResponseCopyWithImpl<_SearchRepoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRepoResponseToJson(this);
  }
}

abstract class _SearchRepoResponse implements SearchRepoResponse {
  const factory _SearchRepoResponse(
      {required int totalCount,
      required List<Repo> items}) = _$_SearchRepoResponse;

  factory _SearchRepoResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchRepoResponse.fromJson;

  @override
  int get totalCount;
  @override
  List<Repo> get items;
  @override
  @JsonKey(ignore: true)
  _$SearchRepoResponseCopyWith<_SearchRepoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
