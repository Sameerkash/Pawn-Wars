// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room.vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoomStateTearOff {
  const _$RoomStateTearOff();

  _Initial inital() {
    return const _Initial();
  }

  _Created created(Room room) {
    return _Created(
      room,
    );
  }

  _Joined joined(Room room, List<Player> players) {
    return _Joined(
      room,
      players,
    );
  }
}

/// @nodoc
const $RoomState = _$RoomStateTearOff();

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(Room room) created,
    required TResult Function(Room room, List<Player> players) joined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(Room room)? created,
    TResult Function(Room room, List<Player> players)? joined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(Room room)? created,
    TResult Function(Room room, List<Player> players)? joined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Created value) created,
    required TResult Function(_Joined value) joined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res> implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  final RoomState _value;
  // ignore: unused_field
  final $Res Function(RoomState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RoomStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RoomState.inital()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(Room room) created,
    required TResult Function(Room room, List<Player> players) joined,
  }) {
    return inital();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(Room room)? created,
    TResult Function(Room room, List<Player> players)? joined,
  }) {
    return inital?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(Room room)? created,
    TResult Function(Room room, List<Player> players)? joined,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Created value) created,
    required TResult Function(_Joined value) joined,
  }) {
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
  }) {
    return inital?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoomState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CreatedCopyWith<$Res> {
  factory _$CreatedCopyWith(_Created value, $Res Function(_Created) then) =
      __$CreatedCopyWithImpl<$Res>;
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$CreatedCopyWithImpl<$Res> extends _$RoomStateCopyWithImpl<$Res>
    implements _$CreatedCopyWith<$Res> {
  __$CreatedCopyWithImpl(_Created _value, $Res Function(_Created) _then)
      : super(_value, (v) => _then(v as _Created));

  @override
  _Created get _value => super._value as _Created;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(_Created(
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

class _$_Created implements _Created {
  const _$_Created(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomState.created(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Created &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  _$CreatedCopyWith<_Created> get copyWith =>
      __$CreatedCopyWithImpl<_Created>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function(Room room) created,
    required TResult Function(Room room, List<Player> players) joined,
  }) {
    return created(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(Room room)? created,
    TResult Function(Room room, List<Player> players)? joined,
  }) {
    return created?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(Room room)? created,
    TResult Function(Room room, List<Player> players)? joined,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_Created value) created,
    required TResult Function(_Joined value) joined,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements RoomState {
  const factory _Created(Room room) = _$_Created;

  Room get room;
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
class __$JoinedCopyWithImpl<$Res> extends _$RoomStateCopyWithImpl<$Res>
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

class _$_Joined implements _Joined {
  const _$_Joined(this.room, this.players);

  @override
  final Room room;
  @override
  final List<Player> players;

  @override
  String toString() {
    return 'RoomState.joined(room: $room, players: $players)';
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
    required TResult Function() inital,
    required TResult Function(Room room) created,
    required TResult Function(Room room, List<Player> players) joined,
  }) {
    return joined(room, players);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(Room room)? created,
    TResult Function(Room room, List<Player> players)? joined,
  }) {
    return joined?.call(room, players);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function(Room room)? created,
    TResult Function(Room room, List<Player> players)? joined,
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
  }) {
    return joined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
  }) {
    return joined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_Created value)? created,
    TResult Function(_Joined value)? joined,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(this);
    }
    return orElse();
  }
}

abstract class _Joined implements RoomState {
  const factory _Joined(Room room, List<Player> players) = _$_Joined;

  Room get room;
  List<Player> get players;
  @JsonKey(ignore: true)
  _$JoinedCopyWith<_Joined> get copyWith => throw _privateConstructorUsedError;
}