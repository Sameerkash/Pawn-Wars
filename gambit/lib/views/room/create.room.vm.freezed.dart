// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create.room.vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateRoomStateTearOff {
  const _$CreateRoomStateTearOff();

  _Initial inital({PlayerPawn? pawn}) {
    return _Initial(
      pawn: pawn,
    );
  }

  _Created created({required Room room, PlayerPawn? pawn}) {
    return _Created(
      room: room,
      pawn: pawn,
    );
  }

  _Joined joined(Room room, List<Player> players) {
    return _Joined(
      room,
      players,
    );
  }

  GameInitialzied gameInitialized(Room room, List<Player> players) {
    return GameInitialzied(
      room,
      players,
    );
  }
}

/// @nodoc
const $CreateRoomState = _$CreateRoomStateTearOff();

/// @nodoc
mixin _$CreateRoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlayerPawn? pawn) inital,
    required TResult Function(Room room, PlayerPawn? pawn) created,
    required TResult Function(Room room, List<Player> players) joined,
    required TResult Function(Room room, List<Player> players) gameInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlayerPawn? pawn)? inital,
    TResult Function(Room room, PlayerPawn? pawn)? created,
    TResult Function(Room room, List<Player> players)? joined,
    TResult Function(Room room, List<Player> players)? gameInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlayerPawn? pawn)? inital,
    TResult Function(Room room, PlayerPawn? pawn)? created,
    TResult Function(Room room, List<Player> players)? joined,
    TResult Function(Room room, List<Player> players)? gameInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Created value) created,
    required TResult Function(_Joined value) joined,
    required TResult Function(GameInitialzied value) gameInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    TResult Function(GameInitialzied value)? gameInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    TResult Function(GameInitialzied value)? gameInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoomStateCopyWith<$Res> {
  factory $CreateRoomStateCopyWith(
          CreateRoomState value, $Res Function(CreateRoomState) then) =
      _$CreateRoomStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateRoomStateCopyWithImpl<$Res>
    implements $CreateRoomStateCopyWith<$Res> {
  _$CreateRoomStateCopyWithImpl(this._value, this._then);

  final CreateRoomState _value;
  // ignore: unused_field
  final $Res Function(CreateRoomState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({PlayerPawn? pawn});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CreateRoomStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? pawn = freezed,
  }) {
    return _then(_Initial(
      pawn: pawn == freezed
          ? _value.pawn
          : pawn // ignore: cast_nullable_to_non_nullable
              as PlayerPawn?,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial({this.pawn});

  @override
  final PlayerPawn? pawn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateRoomState.inital(pawn: $pawn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateRoomState.inital'))
      ..add(DiagnosticsProperty('pawn', pawn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.pawn, pawn) || other.pawn == pawn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pawn);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlayerPawn? pawn) inital,
    required TResult Function(Room room, PlayerPawn? pawn) created,
    required TResult Function(Room room, List<Player> players) joined,
    required TResult Function(Room room, List<Player> players) gameInitialized,
  }) {
    return inital(pawn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlayerPawn? pawn)? inital,
    TResult Function(Room room, PlayerPawn? pawn)? created,
    TResult Function(Room room, List<Player> players)? joined,
    TResult Function(Room room, List<Player> players)? gameInitialized,
  }) {
    return inital?.call(pawn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlayerPawn? pawn)? inital,
    TResult Function(Room room, PlayerPawn? pawn)? created,
    TResult Function(Room room, List<Player> players)? joined,
    TResult Function(Room room, List<Player> players)? gameInitialized,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(pawn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Created value) created,
    required TResult Function(_Joined value) joined,
    required TResult Function(GameInitialzied value) gameInitialized,
  }) {
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    TResult Function(GameInitialzied value)? gameInitialized,
  }) {
    return inital?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    TResult Function(GameInitialzied value)? gameInitialized,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateRoomState {
  const factory _Initial({PlayerPawn? pawn}) = _$_Initial;

  PlayerPawn? get pawn;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreatedCopyWith<$Res> {
  factory _$CreatedCopyWith(_Created value, $Res Function(_Created) then) =
      __$CreatedCopyWithImpl<$Res>;
  $Res call({Room room, PlayerPawn? pawn});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$CreatedCopyWithImpl<$Res> extends _$CreateRoomStateCopyWithImpl<$Res>
    implements _$CreatedCopyWith<$Res> {
  __$CreatedCopyWithImpl(_Created _value, $Res Function(_Created) _then)
      : super(_value, (v) => _then(v as _Created));

  @override
  _Created get _value => super._value as _Created;

  @override
  $Res call({
    Object? room = freezed,
    Object? pawn = freezed,
  }) {
    return _then(_Created(
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      pawn: pawn == freezed
          ? _value.pawn
          : pawn // ignore: cast_nullable_to_non_nullable
              as PlayerPawn?,
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

class _$_Created with DiagnosticableTreeMixin implements _Created {
  const _$_Created({required this.room, this.pawn});

  @override
  final Room room;
  @override
  final PlayerPawn? pawn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateRoomState.created(room: $room, pawn: $pawn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateRoomState.created'))
      ..add(DiagnosticsProperty('room', room))
      ..add(DiagnosticsProperty('pawn', pawn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Created &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.pawn, pawn) || other.pawn == pawn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, pawn);

  @JsonKey(ignore: true)
  @override
  _$CreatedCopyWith<_Created> get copyWith =>
      __$CreatedCopyWithImpl<_Created>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlayerPawn? pawn) inital,
    required TResult Function(Room room, PlayerPawn? pawn) created,
    required TResult Function(Room room, List<Player> players) joined,
    required TResult Function(Room room, List<Player> players) gameInitialized,
  }) {
    return created(room, pawn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlayerPawn? pawn)? inital,
    TResult Function(Room room, PlayerPawn? pawn)? created,
    TResult Function(Room room, List<Player> players)? joined,
    TResult Function(Room room, List<Player> players)? gameInitialized,
  }) {
    return created?.call(room, pawn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlayerPawn? pawn)? inital,
    TResult Function(Room room, PlayerPawn? pawn)? created,
    TResult Function(Room room, List<Player> players)? joined,
    TResult Function(Room room, List<Player> players)? gameInitialized,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(room, pawn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Created value) created,
    required TResult Function(_Joined value) joined,
    required TResult Function(GameInitialzied value) gameInitialized,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    TResult Function(GameInitialzied value)? gameInitialized,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    TResult Function(GameInitialzied value)? gameInitialized,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements CreateRoomState {
  const factory _Created({required Room room, PlayerPawn? pawn}) = _$_Created;

  Room get room;
  PlayerPawn? get pawn;
  @JsonKey(ignore: true)
  _$CreatedCopyWith<_Created> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$JoinedCopyWith<$Res> {
  factory _$JoinedCopyWith(_Joined value, $Res Function(_Joined) then) =
      __$JoinedCopyWithImpl<$Res>;
  $Res call({Room room, List<Player> players});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$JoinedCopyWithImpl<$Res> extends _$CreateRoomStateCopyWithImpl<$Res>
    implements _$JoinedCopyWith<$Res> {
  __$JoinedCopyWithImpl(_Joined _value, $Res Function(_Joined) _then)
      : super(_value, (v) => _then(v as _Joined));

  @override
  _Joined get _value => super._value as _Joined;

  @override
  $Res call({
    Object? room = freezed,
    Object? players = freezed,
  }) {
    return _then(_Joined(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
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

class _$_Joined with DiagnosticableTreeMixin implements _Joined {
  const _$_Joined(this.room, this.players);

  @override
  final Room room;
  @override
  final List<Player> players;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateRoomState.joined(room: $room, players: $players)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateRoomState.joined'))
      ..add(DiagnosticsProperty('room', room))
      ..add(DiagnosticsProperty('players', players));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Joined &&
            (identical(other.room, room) || other.room == room) &&
            const DeepCollectionEquality().equals(other.players, players));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, room, const DeepCollectionEquality().hash(players));

  @JsonKey(ignore: true)
  @override
  _$JoinedCopyWith<_Joined> get copyWith =>
      __$JoinedCopyWithImpl<_Joined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlayerPawn? pawn) inital,
    required TResult Function(Room room, PlayerPawn? pawn) created,
    required TResult Function(Room room, List<Player> players) joined,
    required TResult Function(Room room, List<Player> players) gameInitialized,
  }) {
    return joined(room, players);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlayerPawn? pawn)? inital,
    TResult Function(Room room, PlayerPawn? pawn)? created,
    TResult Function(Room room, List<Player> players)? joined,
    TResult Function(Room room, List<Player> players)? gameInitialized,
  }) {
    return joined?.call(room, players);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlayerPawn? pawn)? inital,
    TResult Function(Room room, PlayerPawn? pawn)? created,
    TResult Function(Room room, List<Player> players)? joined,
    TResult Function(Room room, List<Player> players)? gameInitialized,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(room, players);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Created value) created,
    required TResult Function(_Joined value) joined,
    required TResult Function(GameInitialzied value) gameInitialized,
  }) {
    return joined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    TResult Function(GameInitialzied value)? gameInitialized,
  }) {
    return joined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    TResult Function(GameInitialzied value)? gameInitialized,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(this);
    }
    return orElse();
  }
}

abstract class _Joined implements CreateRoomState {
  const factory _Joined(Room room, List<Player> players) = _$_Joined;

  Room get room;
  List<Player> get players;
  @JsonKey(ignore: true)
  _$JoinedCopyWith<_Joined> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInitialziedCopyWith<$Res> {
  factory $GameInitialziedCopyWith(
          GameInitialzied value, $Res Function(GameInitialzied) then) =
      _$GameInitialziedCopyWithImpl<$Res>;
  $Res call({Room room, List<Player> players});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$GameInitialziedCopyWithImpl<$Res>
    extends _$CreateRoomStateCopyWithImpl<$Res>
    implements $GameInitialziedCopyWith<$Res> {
  _$GameInitialziedCopyWithImpl(
      GameInitialzied _value, $Res Function(GameInitialzied) _then)
      : super(_value, (v) => _then(v as GameInitialzied));

  @override
  GameInitialzied get _value => super._value as GameInitialzied;

  @override
  $Res call({
    Object? room = freezed,
    Object? players = freezed,
  }) {
    return _then(GameInitialzied(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
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

class _$GameInitialzied
    with DiagnosticableTreeMixin
    implements GameInitialzied {
  const _$GameInitialzied(this.room, this.players);

  @override
  final Room room;
  @override
  final List<Player> players;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateRoomState.gameInitialized(room: $room, players: $players)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateRoomState.gameInitialized'))
      ..add(DiagnosticsProperty('room', room))
      ..add(DiagnosticsProperty('players', players));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInitialzied &&
            (identical(other.room, room) || other.room == room) &&
            const DeepCollectionEquality().equals(other.players, players));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, room, const DeepCollectionEquality().hash(players));

  @JsonKey(ignore: true)
  @override
  $GameInitialziedCopyWith<GameInitialzied> get copyWith =>
      _$GameInitialziedCopyWithImpl<GameInitialzied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlayerPawn? pawn) inital,
    required TResult Function(Room room, PlayerPawn? pawn) created,
    required TResult Function(Room room, List<Player> players) joined,
    required TResult Function(Room room, List<Player> players) gameInitialized,
  }) {
    return gameInitialized(room, players);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlayerPawn? pawn)? inital,
    TResult Function(Room room, PlayerPawn? pawn)? created,
    TResult Function(Room room, List<Player> players)? joined,
    TResult Function(Room room, List<Player> players)? gameInitialized,
  }) {
    return gameInitialized?.call(room, players);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlayerPawn? pawn)? inital,
    TResult Function(Room room, PlayerPawn? pawn)? created,
    TResult Function(Room room, List<Player> players)? joined,
    TResult Function(Room room, List<Player> players)? gameInitialized,
    required TResult orElse(),
  }) {
    if (gameInitialized != null) {
      return gameInitialized(room, players);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Created value) created,
    required TResult Function(_Joined value) joined,
    required TResult Function(GameInitialzied value) gameInitialized,
  }) {
    return gameInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    TResult Function(GameInitialzied value)? gameInitialized,
  }) {
    return gameInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    TResult Function(GameInitialzied value)? gameInitialized,
    required TResult orElse(),
  }) {
    if (gameInitialized != null) {
      return gameInitialized(this);
    }
    return orElse();
  }
}

abstract class GameInitialzied implements CreateRoomState {
  const factory GameInitialzied(Room room, List<Player> players) =
      _$GameInitialzied;

  Room get room;
  List<Player> get players;
  @JsonKey(ignore: true)
  $GameInitialziedCopyWith<GameInitialzied> get copyWith =>
      throw _privateConstructorUsedError;
}
