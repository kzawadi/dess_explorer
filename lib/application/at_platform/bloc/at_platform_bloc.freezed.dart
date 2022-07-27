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
    required TResult Function(AtKey atKey) getKeysValue,
    required TResult Function() resetValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    TResult Function(AtKey atKey)? getKeysValue,
    TResult Function()? resetValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    TResult Function(AtKey atKey)? getKeysValue,
    TResult Function()? resetValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getAllKeys value) getAllKeys,
    required TResult Function(_getKeysValue value) getKeysValue,
    required TResult Function(_ResetValues value) resetValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    TResult Function(_getKeysValue value)? getKeysValue,
    TResult Function(_ResetValues value)? resetValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    TResult Function(_getKeysValue value)? getKeysValue,
    TResult Function(_ResetValues value)? resetValues,
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
    required TResult Function(AtKey atKey) getKeysValue,
    required TResult Function() resetValues,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    TResult Function(AtKey atKey)? getKeysValue,
    TResult Function()? resetValues,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    TResult Function(AtKey atKey)? getKeysValue,
    TResult Function()? resetValues,
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
    required TResult Function(_getKeysValue value) getKeysValue,
    required TResult Function(_ResetValues value) resetValues,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    TResult Function(_getKeysValue value)? getKeysValue,
    TResult Function(_ResetValues value)? resetValues,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    TResult Function(_getKeysValue value)? getKeysValue,
    TResult Function(_ResetValues value)? resetValues,
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
    required TResult Function(AtKey atKey) getKeysValue,
    required TResult Function() resetValues,
  }) {
    return getAllKeys(regex, sharedBy, sharedWith);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    TResult Function(AtKey atKey)? getKeysValue,
    TResult Function()? resetValues,
  }) {
    return getAllKeys?.call(regex, sharedBy, sharedWith);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    TResult Function(AtKey atKey)? getKeysValue,
    TResult Function()? resetValues,
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
    required TResult Function(_getKeysValue value) getKeysValue,
    required TResult Function(_ResetValues value) resetValues,
  }) {
    return getAllKeys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    TResult Function(_getKeysValue value)? getKeysValue,
    TResult Function(_ResetValues value)? resetValues,
  }) {
    return getAllKeys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    TResult Function(_getKeysValue value)? getKeysValue,
    TResult Function(_ResetValues value)? resetValues,
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
abstract class _$$_getKeysValueCopyWith<$Res> {
  factory _$$_getKeysValueCopyWith(
          _$_getKeysValue value, $Res Function(_$_getKeysValue) then) =
      __$$_getKeysValueCopyWithImpl<$Res>;
  $Res call({AtKey atKey});
}

/// @nodoc
class __$$_getKeysValueCopyWithImpl<$Res>
    extends _$AtPlatformEventCopyWithImpl<$Res>
    implements _$$_getKeysValueCopyWith<$Res> {
  __$$_getKeysValueCopyWithImpl(
      _$_getKeysValue _value, $Res Function(_$_getKeysValue) _then)
      : super(_value, (v) => _then(v as _$_getKeysValue));

  @override
  _$_getKeysValue get _value => super._value as _$_getKeysValue;

  @override
  $Res call({
    Object? atKey = freezed,
  }) {
    return _then(_$_getKeysValue(
      atKey == freezed
          ? _value.atKey
          : atKey // ignore: cast_nullable_to_non_nullable
              as AtKey,
    ));
  }
}

/// @nodoc

class _$_getKeysValue implements _getKeysValue {
  const _$_getKeysValue(this.atKey);

  @override
  final AtKey atKey;

  @override
  String toString() {
    return 'AtPlatformEvent.getKeysValue(atKey: $atKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getKeysValue &&
            const DeepCollectionEquality().equals(other.atKey, atKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(atKey));

  @JsonKey(ignore: true)
  @override
  _$$_getKeysValueCopyWith<_$_getKeysValue> get copyWith =>
      __$$_getKeysValueCopyWithImpl<_$_getKeysValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? regex, String? sharedBy, String? sharedWith)
        getAllKeys,
    required TResult Function(AtKey atKey) getKeysValue,
    required TResult Function() resetValues,
  }) {
    return getKeysValue(atKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    TResult Function(AtKey atKey)? getKeysValue,
    TResult Function()? resetValues,
  }) {
    return getKeysValue?.call(atKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    TResult Function(AtKey atKey)? getKeysValue,
    TResult Function()? resetValues,
    required TResult orElse(),
  }) {
    if (getKeysValue != null) {
      return getKeysValue(atKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getAllKeys value) getAllKeys,
    required TResult Function(_getKeysValue value) getKeysValue,
    required TResult Function(_ResetValues value) resetValues,
  }) {
    return getKeysValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    TResult Function(_getKeysValue value)? getKeysValue,
    TResult Function(_ResetValues value)? resetValues,
  }) {
    return getKeysValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    TResult Function(_getKeysValue value)? getKeysValue,
    TResult Function(_ResetValues value)? resetValues,
    required TResult orElse(),
  }) {
    if (getKeysValue != null) {
      return getKeysValue(this);
    }
    return orElse();
  }
}

abstract class _getKeysValue implements AtPlatformEvent {
  const factory _getKeysValue(final AtKey atKey) = _$_getKeysValue;

  AtKey get atKey;
  @JsonKey(ignore: true)
  _$$_getKeysValueCopyWith<_$_getKeysValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetValuesCopyWith<$Res> {
  factory _$$_ResetValuesCopyWith(
          _$_ResetValues value, $Res Function(_$_ResetValues) then) =
      __$$_ResetValuesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetValuesCopyWithImpl<$Res>
    extends _$AtPlatformEventCopyWithImpl<$Res>
    implements _$$_ResetValuesCopyWith<$Res> {
  __$$_ResetValuesCopyWithImpl(
      _$_ResetValues _value, $Res Function(_$_ResetValues) _then)
      : super(_value, (v) => _then(v as _$_ResetValues));

  @override
  _$_ResetValues get _value => super._value as _$_ResetValues;
}

/// @nodoc

class _$_ResetValues implements _ResetValues {
  const _$_ResetValues();

  @override
  String toString() {
    return 'AtPlatformEvent.resetValues()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetValues);
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
    required TResult Function(AtKey atKey) getKeysValue,
    required TResult Function() resetValues,
  }) {
    return resetValues();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    TResult Function(AtKey atKey)? getKeysValue,
    TResult Function()? resetValues,
  }) {
    return resetValues?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? regex, String? sharedBy, String? sharedWith)?
        getAllKeys,
    TResult Function(AtKey atKey)? getKeysValue,
    TResult Function()? resetValues,
    required TResult orElse(),
  }) {
    if (resetValues != null) {
      return resetValues();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getAllKeys value) getAllKeys,
    required TResult Function(_getKeysValue value) getKeysValue,
    required TResult Function(_ResetValues value) resetValues,
  }) {
    return resetValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    TResult Function(_getKeysValue value)? getKeysValue,
    TResult Function(_ResetValues value)? resetValues,
  }) {
    return resetValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllKeys value)? getAllKeys,
    TResult Function(_getKeysValue value)? getKeysValue,
    TResult Function(_ResetValues value)? resetValues,
    required TResult orElse(),
  }) {
    if (resetValues != null) {
      return resetValues(this);
    }
    return orElse();
  }
}

abstract class _ResetValues implements AtPlatformEvent {
  const factory _ResetValues() = _$_ResetValues;
}

/// @nodoc
mixin _$AtPlatformState {
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get liveData => throw _privateConstructorUsedError;
  AtPlatformFailure? get error => throw _privateConstructorUsedError;
  List<AtKey>? get data => throw _privateConstructorUsedError;
  Value? get atValue => throw _privateConstructorUsedError;
  String get secondaryServerAdress => throw _privateConstructorUsedError;
  bool get refreshValues => throw _privateConstructorUsedError;

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
      List<AtKey>? data,
      Value? atValue,
      String secondaryServerAdress,
      bool refreshValues});

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
    Object? atValue = freezed,
    Object? secondaryServerAdress = freezed,
    Object? refreshValues = freezed,
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
      atValue: atValue == freezed
          ? _value.atValue
          : atValue // ignore: cast_nullable_to_non_nullable
              as Value?,
      secondaryServerAdress: secondaryServerAdress == freezed
          ? _value.secondaryServerAdress
          : secondaryServerAdress // ignore: cast_nullable_to_non_nullable
              as String,
      refreshValues: refreshValues == freezed
          ? _value.refreshValues
          : refreshValues // ignore: cast_nullable_to_non_nullable
              as bool,
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
      List<AtKey>? data,
      Value? atValue,
      String secondaryServerAdress,
      bool refreshValues});

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
    Object? atValue = freezed,
    Object? secondaryServerAdress = freezed,
    Object? refreshValues = freezed,
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
      atValue: atValue == freezed
          ? _value.atValue
          : atValue // ignore: cast_nullable_to_non_nullable
              as Value?,
      secondaryServerAdress: secondaryServerAdress == freezed
          ? _value.secondaryServerAdress
          : secondaryServerAdress // ignore: cast_nullable_to_non_nullable
              as String,
      refreshValues: refreshValues == freezed
          ? _value.refreshValues
          : refreshValues // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AtPlatformState implements _AtPlatformState {
  const _$_AtPlatformState(
      {required this.showErrorMessages,
      required this.liveData,
      this.error,
      final List<AtKey>? data,
      this.atValue,
      required this.secondaryServerAdress,
      required this.refreshValues})
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
  final Value? atValue;
  @override
  final String secondaryServerAdress;
  @override
  final bool refreshValues;

  @override
  String toString() {
    return 'AtPlatformState(showErrorMessages: $showErrorMessages, liveData: $liveData, error: $error, data: $data, atValue: $atValue, secondaryServerAdress: $secondaryServerAdress, refreshValues: $refreshValues)';
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
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.atValue, atValue) &&
            const DeepCollectionEquality()
                .equals(other.secondaryServerAdress, secondaryServerAdress) &&
            const DeepCollectionEquality()
                .equals(other.refreshValues, refreshValues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(liveData),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(atValue),
      const DeepCollectionEquality().hash(secondaryServerAdress),
      const DeepCollectionEquality().hash(refreshValues));

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
      final List<AtKey>? data,
      final Value? atValue,
      required final String secondaryServerAdress,
      required final bool refreshValues}) = _$_AtPlatformState;

  @override
  bool get showErrorMessages;
  @override
  bool get liveData;
  @override
  AtPlatformFailure? get error;
  @override
  List<AtKey>? get data;
  @override
  Value? get atValue;
  @override
  String get secondaryServerAdress;
  @override
  bool get refreshValues;
  @override
  @JsonKey(ignore: true)
  _$$_AtPlatformStateCopyWith<_$_AtPlatformState> get copyWith =>
      throw _privateConstructorUsedError;
}
