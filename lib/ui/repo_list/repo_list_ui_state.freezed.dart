// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_list_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepoListUiStateTearOff {
  const _$RepoListUiStateTearOff();

  _RepoListUiState call(
      {AsyncValue<List<Repo>> repoList = const AsyncData([])}) {
    return _RepoListUiState(
      repoList: repoList,
    );
  }
}

/// @nodoc
const $RepoListUiState = _$RepoListUiStateTearOff();

/// @nodoc
mixin _$RepoListUiState {
  AsyncValue<List<Repo>> get repoList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoListUiStateCopyWith<RepoListUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoListUiStateCopyWith<$Res> {
  factory $RepoListUiStateCopyWith(
          RepoListUiState value, $Res Function(RepoListUiState) then) =
      _$RepoListUiStateCopyWithImpl<$Res>;
  $Res call({AsyncValue<List<Repo>> repoList});
}

/// @nodoc
class _$RepoListUiStateCopyWithImpl<$Res>
    implements $RepoListUiStateCopyWith<$Res> {
  _$RepoListUiStateCopyWithImpl(this._value, this._then);

  final RepoListUiState _value;
  // ignore: unused_field
  final $Res Function(RepoListUiState) _then;

  @override
  $Res call({
    Object? repoList = freezed,
  }) {
    return _then(_value.copyWith(
      repoList: repoList == freezed
          ? _value.repoList
          : repoList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Repo>>,
    ));
  }
}

/// @nodoc
abstract class _$RepoListUiStateCopyWith<$Res>
    implements $RepoListUiStateCopyWith<$Res> {
  factory _$RepoListUiStateCopyWith(
          _RepoListUiState value, $Res Function(_RepoListUiState) then) =
      __$RepoListUiStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncValue<List<Repo>> repoList});
}

/// @nodoc
class __$RepoListUiStateCopyWithImpl<$Res>
    extends _$RepoListUiStateCopyWithImpl<$Res>
    implements _$RepoListUiStateCopyWith<$Res> {
  __$RepoListUiStateCopyWithImpl(
      _RepoListUiState _value, $Res Function(_RepoListUiState) _then)
      : super(_value, (v) => _then(v as _RepoListUiState));

  @override
  _RepoListUiState get _value => super._value as _RepoListUiState;

  @override
  $Res call({
    Object? repoList = freezed,
  }) {
    return _then(_RepoListUiState(
      repoList: repoList == freezed
          ? _value.repoList
          : repoList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Repo>>,
    ));
  }
}

/// @nodoc

class _$_RepoListUiState implements _RepoListUiState {
  _$_RepoListUiState({this.repoList = const AsyncData([])});

  @JsonKey()
  @override
  final AsyncValue<List<Repo>> repoList;

  @override
  String toString() {
    return 'RepoListUiState(repoList: $repoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepoListUiState &&
            const DeepCollectionEquality().equals(other.repoList, repoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(repoList));

  @JsonKey(ignore: true)
  @override
  _$RepoListUiStateCopyWith<_RepoListUiState> get copyWith =>
      __$RepoListUiStateCopyWithImpl<_RepoListUiState>(this, _$identity);
}

abstract class _RepoListUiState implements RepoListUiState {
  factory _RepoListUiState({AsyncValue<List<Repo>> repoList}) =
      _$_RepoListUiState;

  @override
  AsyncValue<List<Repo>> get repoList;
  @override
  @JsonKey(ignore: true)
  _$RepoListUiStateCopyWith<_RepoListUiState> get copyWith =>
      throw _privateConstructorUsedError;
}
