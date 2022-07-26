// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'at_platform_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AtPlatformEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? regex, String? sharedBy, String? sharedWith)
        getAllKeys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getAllKeys value) getAllKeys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtPlatformEventCopyWith<$Res> {
  factory $AtPlatformEventCopyWith(
          AtPlatformEvent value, $Res Function(AtPlatformEvent) then) =
      _$AtPlatformEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AtPlatformEventCopyWithImpl<$Res>
    implements $AtPlatformEventCopyWith<$Res> {
  _$AtPlatformEventCopyWithImpl(this._value, this._then);

  final AtPlatformEvent _value;
  // ignore: unused_field
  final $Res Function(AtPlatformEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$AtPlatformEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AtPlatformEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? regex, String? sharedBy, String? sharedWith)
        getAllKeys,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getAllKeys value) getAllKeys,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AtPlatformEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_getAllKeysCopyWith<$Res> {
  factory _$$_getAllKeysCopyWith(
          _$_getAllKeys value, $Res Function(_$_getAllKeys) then) =
      __$$_getAllKeysCopyWithImpl<$Res>;
  $Res call({String? regex, String? sharedBy, String? sharedWith});
}

/// @nodoc
class __$$_getAllKeysCopyWithImpl<$Res>
    extends _$AtPlatformEventCopyWithImpl<$Res>
    implements _$$_getAllKeysCopyWith<$Res> {
  __$$_getAllKeysCopyWithImpl(
      _$_getAllKeys _value, $Res Function(_$_getAllKeys) _then)
      : super(_value, (v) => _then(v as _$_getAllKeys));

  @override
  _$_getAllKeys get _value => super._value as _$_getAllKeys;

  @override
  $Res call({
    Object? regex = freezed,
    Object? sharedBy = freezed,
    Object? sharedWith = freezed,
  }) {
    return _then(_$_getAllKeys(
      regex: regex == freezed
          ? _value.regex
          : regex // ignore: cast_nullable_to_non_nullable
              as String?,
      sharedBy: sharedBy == freezed
          ? _value.sharedBy
          : sharedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sharedWith: sharedWith == freezed
          ? _value.sharedWith
          : sharedWith // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_getAllKeys implements _getAllKeys {
  const _$_getAllKeys({this.regex, this.sharedBy, this.sharedWith});

  @override
  final String? regex;
  @override
  final String? sharedBy;
  @override
  final String? sharedWith;

  @override
  String toString() {
    return 'AtPlatformEvent.getAllKeys(regex: $regex, sharedBy: $sharedBy, sharedWith: $sharedWith)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getAllKeys &&
            const DeepCollectionEquality().equals(other.regex, regex) &&
            const DeepCollectionEquality().equals(other.sharedBy, sharedBy) &&
            const DeepCollectionEquality()
                .equals(other.sharedWith, sharedWith));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(regex),
      const DeepCollectionEquality().hash(sharedBy),
      const DeepCollectionEquality().hash(sharedWith));

  @JsonKey(ignore: true)
  @override
  _$$_getAllKeysCopyWith<_$_getAllKeys> get copyWith =>
      __$$_getAllKeysCopyWithImpl<_$_getAllKeys>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? regex, String? sharedBy, String? sharedWith)
        getAllKeys,
  }) {
    return getAllKeys(regex, sharedBy, sharedWith);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
  }) {
    return getAllKeys?.call(regex, sharedBy, sharedWith);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    required TResult orElse(),
  }) {
    if (getAllKeys != null) {
      return getAllKeys(regex, sharedBy, sharedWith);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getAllKeys value) getAllKeys,
  }) {
    return getAllKeys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
  }) {
    return getAllKeys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    required TResult orElse(),
  }) {
    if (getAllKeys != null) {
      return getAllKeys(this);
    }
    return orElse();
  }
}

abstract class _getAllKeys implements AtPlatformEvent {
  const factory _getAllKeys(
      {final String? regex,
      final String? sharedBy,
      final String? sharedWith}) = _$_getAllKeys;

  String? get regex;
  String? get sharedBy;
  String? get sharedWith;
  @JsonKey(ignore: true)
  _$$_getAllKeysCopyWith<_$_getAllKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AtPlatformState {
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get liveData => throw _privateConstructorUsedError;
  AtPlatformFailure? get error => throw _privateConstructorUsedError;
  List<AtKey>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AtPlatformStateCopyWith<AtPlatformState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtPlatformStateCopyWith<$Res> {
  factory $AtPlatformStateCopyWith(
          AtPlatformState value, $Res Function(AtPlatformState) then) =
      _$AtPlatformStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool liveData,
      AtPlatformFailure? error,
      List<AtKey>? data});

  $AtPlatformFailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$AtPlatformStateCopyWithImpl<$Res>
    implements $AtPlatformStateCopyWith<$Res> {
  _$AtPlatformStateCopyWithImpl(this._value, this._then);

  final AtPlatformState _value;
  // ignore: unused_field
  final $Res Function(AtPlatformState) _then;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? liveData = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      liveData: liveData == freezed
          ? _value.liveData
          : liveData // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AtPlatformFailure?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AtKey>?,
    ));
  }

  @override
  $AtPlatformFailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AtPlatformFailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$$_AtPlatformStateCopyWith<$Res>
    implements $AtPlatformStateCopyWith<$Res> {
  factory _$$_AtPlatformStateCopyWith(
          _$_AtPlatformState value, $Res Function(_$_AtPlatformState) then) =
      __$$_AtPlatformStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool liveData,
      AtPlatformFailure? error,
      List<AtKey>? data});

  @override
  $AtPlatformFailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_AtPlatformStateCopyWithImpl<$Res>
    extends _$AtPlatformStateCopyWithImpl<$Res>
    implements _$$_AtPlatformStateCopyWith<$Res> {
  __$$_AtPlatformStateCopyWithImpl(
      _$_AtPlatformState _value, $Res Function(_$_AtPlatformState) _then)
      : super(_value, (v) => _then(v as _$_AtPlatformState));

  @override
  _$_AtPlatformState get _value => super._value as _$_AtPlatformState;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? liveData = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_AtPlatformState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      liveData: liveData == freezed
          ? _value.liveData
          : liveData // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AtPlatformFailure?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AtKey>?,
    ));
  }
}

/// @nodoc

class _$_AtPlatformState implements _AtPlatformState {
  const _$_AtPlatformState(
      {required this.showErrorMessages,
      required this.liveData,
      this.error,
      final List<AtKey>? data})
      : _data = data;

  @override
  final bool showErrorMessages;
  @override
  final bool liveData;
  @override
  final AtPlatformFailure? error;
  final List<AtKey>? _data;
  @override
  List<AtKey>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AtPlatformState(showErrorMessages: $showErrorMessages, liveData: $liveData, error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AtPlatformState &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.liveData, liveData) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(liveData),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_AtPlatformStateCopyWith<_$_AtPlatformState> get copyWith =>
      __$$_AtPlatformStateCopyWithImpl<_$_AtPlatformState>(this, _$identity);
}

abstract class _AtPlatformState implements AtPlatformState {
  const factory _AtPlatformState(
      {required final bool showErrorMessages,
      required final bool liveData,
      final AtPlatformFailure? error,
      final List<AtKey>? data}) = _$_AtPlatformState;

  @override
  bool get showErrorMessages;
  @override
  bool get liveData;
  @override
  AtPlatformFailure? get error;
  @override
  List<AtKey>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_AtPlatformStateCopyWith<_$_AtPlatformState> get copyWith =>
      throw _privateConstructorUsedError;
}
