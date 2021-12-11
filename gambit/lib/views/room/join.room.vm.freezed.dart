// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'join.room.vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JoinRoomStateTearOff {
  const _$JoinRoomStateTearOff();

  _Initial inital({int stake = 0, String? code}) {
    return _Initial(
      stake: stake,
      code: code,
    );
  }

  _Joined joined(Room room) {
    return _Joined(
      room,
    );
  }

  _Error error({String error = 'Invalid Room Code'}) {
    return _Error(
      error: error,
    );
  }

  GameInitialzied gameInitialized(Room room) {
    return GameInitialzied(
      room,
    );
  }
}

/// @nodoc
const $JoinRoomState = _$JoinRoomStateTearOff();

/// @nodoc
mixin _$JoinRoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stake, String? code) inital,
    required TResult Function(Room room) joined,
    required TResult Function(String error) error,
    required TResult Function(Room room) gameInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int stake, String? code)? inital,
    TResult Function(Room room)? joined,
    TResult Function(String error)? error,
    TResult Function(Room room)? gameInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stake, String? code)? inital,
    TResult Function(Room room)? joined,
    TResult Function(String error)? error,
    TResult Function(Room room)? gameInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Error value) error,
    required TResult Function(GameInitialzied value) gameInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Joined value)? joined,
    TResult Function(_Error value)? error,
    TResult Function(GameInitialzied value)? gameInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Joined value)? joined,
    TResult Function(_Error value)? error,
    TResult Function(GameInitialzied value)? gameInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRoomStateCopyWith<$Res> {
  factory $JoinRoomStateCopyWith(
          JoinRoomState value, $Res Function(JoinRoomState) then) =
      _$JoinRoomStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinRoomStateCopyWithImpl<$Res>
    implements $JoinRoomStateCopyWith<$Res> {
  _$JoinRoomStateCopyWithImpl(this._value, this._then);

  final JoinRoomState _value;
  // ignore: unused_field
  final $Res Function(JoinRoomState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({int stake, String? code});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$JoinRoomStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? stake = freezed,
    Object? code = freezed,
  }) {
    return _then(_Initial(
      stake: stake == freezed
          ? _value.stake
          : stake // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.stake = 0, this.code});

  @JsonKey(defaultValue: 0)
  @override
  final int stake;
  @override
  final String? code;

  @override
  String toString() {
    return 'JoinRoomState.inital(stake: $stake, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.stake, stake) || other.stake == stake) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stake, code);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stake, String? code) inital,
    required TResult Function(Room room) joined,
    required TResult Function(String error) error,
    required TResult Function(Room room) gameInitialized,
  }) {
    return inital(stake, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int stake, String? code)? inital,
    TResult Function(Room room)? joined,
    TResult Function(String error)? error,
    TResult Function(Room room)? gameInitialized,
  }) {
    return inital?.call(stake, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stake, String? code)? inital,
    TResult Function(Room room)? joined,
    TResult Function(String error)? error,
    TResult Function(Room room)? gameInitialized,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(stake, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Error value) error,
    required TResult Function(GameInitialzied value) gameInitialized,
  }) {
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Joined value)? joined,
    TResult Function(_Error value)? error,
    TResult Function(GameInitialzied value)? gameInitialized,
  }) {
    return inital?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Joined value)? joined,
    TResult Function(_Error value)? error,
    TResult Function(GameInitialzied value)? gameInitialized,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JoinRoomState {
  const factory _Initial({int stake, String? code}) = _$_Initial;

  int get stake;
  String? get code;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$JoinedCopyWith<$Res> {
  factory _$JoinedCopyWith(_Joined value, $Res Function(_Joined) then) =
      __$JoinedCopyWithImpl<$Res>;
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$JoinedCopyWithImpl<$Res> extends _$JoinRoomStateCopyWithImpl<$Res>
    implements _$JoinedCopyWith<$Res> {
  __$JoinedCopyWithImpl(_Joined _value, $Res Function(_Joined) _then)
      : super(_value, (v) => _then(v as _Joined));

  @override
  _Joined get _value => super._value as _Joined;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(_Joined(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }

  @override
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc

class _$_Joined implements _Joined {
  const _$_Joined(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'JoinRoomState.joined(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Joined &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  _$JoinedCopyWith<_Joined> get copyWith =>
      __$JoinedCopyWithImpl<_Joined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stake, String? code) inital,
    required TResult Function(Room room) joined,
    required TResult Function(String error) error,
    required TResult Function(Room room) gameInitialized,
  }) {
    return joined(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int stake, String? code)? inital,
    TResult Function(Room room)? joined,
    TResult Function(String error)? error,
    TResult Function(Room room)? gameInitialized,
  }) {
    return joined?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stake, String? code)? inital,
    TResult Function(Room room)? joined,
    TResult Function(String error)? error,
    TResult Function(Room room)? gameInitialized,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Error value) error,
    required TResult Function(GameInitialzied value) gameInitialized,
  }) {
    return joined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Joined value)? joined,
    TResult Function(_Error value)? error,
    TResult Function(GameInitialzied value)? gameInitialized,
  }) {
    return joined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Joined value)? joined,
    TResult Function(_Error value)? error,
    TResult Function(GameInitialzied value)? gameInitialized,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(this);
    }
    return orElse();
  }
}

abstract class _Joined implements JoinRoomState {
  const factory _Joined(Room room) = _$_Joined;

  Room get room;
  @JsonKey(ignore: true)
  _$JoinedCopyWith<_Joined> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$JoinRoomStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.error = 'Invalid Room Code'});

  @JsonKey(defaultValue: 'Invalid Room Code')
  @override
  final String error;

  @override
  String toString() {
    return 'JoinRoomState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stake, String? code) inital,
    required TResult Function(Room room) joined,
    required TResult Function(String error) error,
    required TResult Function(Room room) gameInitialized,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int stake, String? code)? inital,
    TResult Function(Room room)? joined,
    TResult Function(String error)? error,
    TResult Function(Room room)? gameInitialized,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stake, String? code)? inital,
    TResult Function(Room room)? joined,
    TResult Function(String error)? error,
    TResult Function(Room room)? gameInitialized,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Error value) error,
    required TResult Function(GameInitialzied value) gameInitialized,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Joined value)? joined,
    TResult Function(_Error value)? error,
    TResult Function(GameInitialzied value)? gameInitialized,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Joined value)? joined,
    TResult Function(_Error value)? error,
    TResult Function(GameInitialzied value)? gameInitialized,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements JoinRoomState {
  const factory _Error({String error}) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInitialziedCopyWith<$Res> {
  factory $GameInitialziedCopyWith(
          GameInitialzied value, $Res Function(GameInitialzied) then) =
      _$GameInitialziedCopyWithImpl<$Res>;
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$GameInitialziedCopyWithImpl<$Res>
    extends _$JoinRoomStateCopyWithImpl<$Res>
    implements $GameInitialziedCopyWith<$Res> {
  _$GameInitialziedCopyWithImpl(
      GameInitialzied _value, $Res Function(GameInitialzied) _then)
      : super(_value, (v) => _then(v as GameInitialzied));

  @override
  GameInitialzied get _value => super._value as GameInitialzied;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(GameInitialzied(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }

  @override
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc

class _$GameInitialzied implements GameInitialzied {
  const _$GameInitialzied(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'JoinRoomState.gameInitialized(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInitialzied &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  $GameInitialziedCopyWith<GameInitialzied> get copyWith =>
      _$GameInitialziedCopyWithImpl<GameInitialzied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stake, String? code) inital,
    required TResult Function(Room room) joined,
    required TResult Function(String error) error,
    required TResult Function(Room room) gameInitialized,
  }) {
    return gameInitialized(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int stake, String? code)? inital,
    TResult Function(Room room)? joined,
    TResult Function(String error)? error,
    TResult Function(Room room)? gameInitialized,
  }) {
    return gameInitialized?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stake, String? code)? inital,
    TResult Function(Room room)? joined,
    TResult Function(String error)? error,
    TResult Function(Room room)? gameInitialized,
    required TResult orElse(),
  }) {
    if (gameInitialized != null) {
      return gameInitialized(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Joined value) joined,
    required TResult Function(_Error value) error,
    required TResult Function(GameInitialzied value) gameInitialized,
  }) {
    return gameInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Joined value)? joined,
    TResult Function(_Error value)? error,
    TResult Function(GameInitialzied value)? gameInitialized,
  }) {
    return gameInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Joined value)? joined,
    TResult Function(_Error value)? error,
    TResult Function(GameInitialzied value)? gameInitialized,
    required TResult orElse(),
  }) {
    if (gameInitialized != null) {
      return gameInitialized(this);
    }
    return orElse();
  }
}

abstract class GameInitialzied implements JoinRoomState {
  const factory GameInitialzied(Room room) = _$GameInitialzied;

  Room get room;
  @JsonKey(ignore: true)
  $GameInitialziedCopyWith<GameInitialzied> get copyWith =>
      throw _privateConstructorUsedError;
}
