// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bot_nav_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BotNavBarEvent {
  NavigationRoutes get navigation => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigationRoutes navigation) goTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavigationRoutes navigation)? goTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigationRoutes navigation)? goTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GoTo value) goTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GoTo value)? goTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GoTo value)? goTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BotNavBarEventCopyWith<BotNavBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotNavBarEventCopyWith<$Res> {
  factory $BotNavBarEventCopyWith(
          BotNavBarEvent value, $Res Function(BotNavBarEvent) then) =
      _$BotNavBarEventCopyWithImpl<$Res>;
  $Res call({NavigationRoutes navigation});
}

/// @nodoc
class _$BotNavBarEventCopyWithImpl<$Res>
    implements $BotNavBarEventCopyWith<$Res> {
  _$BotNavBarEventCopyWithImpl(this._value, this._then);

  final BotNavBarEvent _value;
  // ignore: unused_field
  final $Res Function(BotNavBarEvent) _then;

  @override
  $Res call({
    Object? navigation = freezed,
  }) {
    return _then(_value.copyWith(
      navigation: navigation == freezed
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as NavigationRoutes,
    ));
  }
}

/// @nodoc
abstract class _$$_GoToCopyWith<$Res> implements $BotNavBarEventCopyWith<$Res> {
  factory _$$_GoToCopyWith(_$_GoTo value, $Res Function(_$_GoTo) then) =
      __$$_GoToCopyWithImpl<$Res>;
  @override
  $Res call({NavigationRoutes navigation});
}

/// @nodoc
class __$$_GoToCopyWithImpl<$Res> extends _$BotNavBarEventCopyWithImpl<$Res>
    implements _$$_GoToCopyWith<$Res> {
  __$$_GoToCopyWithImpl(_$_GoTo _value, $Res Function(_$_GoTo) _then)
      : super(_value, (v) => _then(v as _$_GoTo));

  @override
  _$_GoTo get _value => super._value as _$_GoTo;

  @override
  $Res call({
    Object? navigation = freezed,
  }) {
    return _then(_$_GoTo(
      navigation == freezed
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as NavigationRoutes,
    ));
  }
}

/// @nodoc

class _$_GoTo implements _GoTo {
  const _$_GoTo(this.navigation);

  @override
  final NavigationRoutes navigation;

  @override
  String toString() {
    return 'BotNavBarEvent.goTo(navigation: $navigation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoTo &&
            const DeepCollectionEquality()
                .equals(other.navigation, navigation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(navigation));

  @JsonKey(ignore: true)
  @override
  _$$_GoToCopyWith<_$_GoTo> get copyWith =>
      __$$_GoToCopyWithImpl<_$_GoTo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigationRoutes navigation) goTo,
  }) {
    return goTo(navigation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavigationRoutes navigation)? goTo,
  }) {
    return goTo?.call(navigation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigationRoutes navigation)? goTo,
    required TResult orElse(),
  }) {
    if (goTo != null) {
      return goTo(navigation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GoTo value) goTo,
  }) {
    return goTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GoTo value)? goTo,
  }) {
    return goTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GoTo value)? goTo,
    required TResult orElse(),
  }) {
    if (goTo != null) {
      return goTo(this);
    }
    return orElse();
  }
}

abstract class _GoTo implements BotNavBarEvent {
  const factory _GoTo(final NavigationRoutes navigation) = _$_GoTo;

  @override
  NavigationRoutes get navigation;
  @override
  @JsonKey(ignore: true)
  _$$_GoToCopyWith<_$_GoTo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BotNavBarState {
  NavigationRoutes get previus => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BotNavBarStateCopyWith<BotNavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotNavBarStateCopyWith<$Res> {
  factory $BotNavBarStateCopyWith(
          BotNavBarState value, $Res Function(BotNavBarState) then) =
      _$BotNavBarStateCopyWithImpl<$Res>;
  $Res call({NavigationRoutes previus, int selectedIndex});
}

/// @nodoc
class _$BotNavBarStateCopyWithImpl<$Res>
    implements $BotNavBarStateCopyWith<$Res> {
  _$BotNavBarStateCopyWithImpl(this._value, this._then);

  final BotNavBarState _value;
  // ignore: unused_field
  final $Res Function(BotNavBarState) _then;

  @override
  $Res call({
    Object? previus = freezed,
    Object? selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      previus: previus == freezed
          ? _value.previus
          : previus // ignore: cast_nullable_to_non_nullable
              as NavigationRoutes,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BotNavBarStateCopyWith<$Res>
    implements $BotNavBarStateCopyWith<$Res> {
  factory _$$_BotNavBarStateCopyWith(
          _$_BotNavBarState value, $Res Function(_$_BotNavBarState) then) =
      __$$_BotNavBarStateCopyWithImpl<$Res>;
  @override
  $Res call({NavigationRoutes previus, int selectedIndex});
}

/// @nodoc
class __$$_BotNavBarStateCopyWithImpl<$Res>
    extends _$BotNavBarStateCopyWithImpl<$Res>
    implements _$$_BotNavBarStateCopyWith<$Res> {
  __$$_BotNavBarStateCopyWithImpl(
      _$_BotNavBarState _value, $Res Function(_$_BotNavBarState) _then)
      : super(_value, (v) => _then(v as _$_BotNavBarState));

  @override
  _$_BotNavBarState get _value => super._value as _$_BotNavBarState;

  @override
  $Res call({
    Object? previus = freezed,
    Object? selectedIndex = freezed,
  }) {
    return _then(_$_BotNavBarState(
      previus: previus == freezed
          ? _value.previus
          : previus // ignore: cast_nullable_to_non_nullable
              as NavigationRoutes,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BotNavBarState implements _BotNavBarState {
  const _$_BotNavBarState({required this.previus, required this.selectedIndex});

  @override
  final NavigationRoutes previus;
  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'BotNavBarState(previus: $previus, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BotNavBarState &&
            const DeepCollectionEquality().equals(other.previus, previus) &&
            const DeepCollectionEquality()
                .equals(other.selectedIndex, selectedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(previus),
      const DeepCollectionEquality().hash(selectedIndex));

  @JsonKey(ignore: true)
  @override
  _$$_BotNavBarStateCopyWith<_$_BotNavBarState> get copyWith =>
      __$$_BotNavBarStateCopyWithImpl<_$_BotNavBarState>(this, _$identity);
}

abstract class _BotNavBarState implements BotNavBarState {
  const factory _BotNavBarState(
      {required final NavigationRoutes previus,
      required final int selectedIndex}) = _$_BotNavBarState;

  @override
  NavigationRoutes get previus;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$_BotNavBarStateCopyWith<_$_BotNavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
