// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
class _$RoomTearOff {
  const _$RoomTearOff();

  _Room call(
      {required String id,
      List<Player> players = const [],
      bool isStarted = false,
      String? winnerPublicKey,
      int? totalStake}) {
    return _Room(
      id: id,
      players: players,
      isStarted: isStarted,
      winnerPublicKey: winnerPublicKey,
      totalStake: totalStake,
    );
  }

  Room fromJson(Map<String, Object?> json) {
    return Room.fromJson(json);
  }
}

/// @nodoc
const $Room = _$RoomTearOff();

/// @nodoc
mixin _$Room {
  String get id => throw _privateConstructorUsedError;
  List<Player> get players => throw _privateConstructorUsedError;
  bool get isStarted => throw _privateConstructorUsedError;
  String? get winnerPublicKey => throw _privateConstructorUsedError;
  int? get totalStake => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<Player> players,
      bool isStarted,
      String? winnerPublicKey,
      int? totalStake});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? players = freezed,
    Object? isStarted = freezed,
    Object? winnerPublicKey = freezed,
    Object? totalStake = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      isStarted: isStarted == freezed
          ? _value.isStarted
          : isStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      winnerPublicKey: winnerPublicKey == freezed
          ? _value.winnerPublicKey
          : winnerPublicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStake: totalStake == freezed
          ? _value.totalStake
          : totalStake // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) then) =
      __$RoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<Player> players,
      bool isStarted,
      String? winnerPublicKey,
      int? totalStake});
}

/// @nodoc
class __$RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(_Room _value, $Res Function(_Room) _then)
      : super(_value, (v) => _then(v as _Room));

  @override
  _Room get _value => super._value as _Room;

  @override
  $Res call({
    Object? id = freezed,
    Object? players = freezed,
    Object? isStarted = freezed,
    Object? winnerPublicKey = freezed,
    Object? totalStake = freezed,
  }) {
    return _then(_Room(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      isStarted: isStarted == freezed
          ? _value.isStarted
          : isStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      winnerPublicKey: winnerPublicKey == freezed
          ? _value.winnerPublicKey
          : winnerPublicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStake: totalStake == freezed
          ? _value.totalStake
          : totalStake // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room implements _Room {
  const _$_Room(
      {required this.id,
      this.players = const [],
      this.isStarted = false,
      this.winnerPublicKey,
      this.totalStake});

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  @override
  final String id;
  @JsonKey(defaultValue: const [])
  @override
  final List<Player> players;
  @JsonKey(defaultValue: false)
  @override
  final bool isStarted;
  @override
  final String? winnerPublicKey;
  @override
  final int? totalStake;

  @override
  String toString() {
    return 'Room(id: $id, players: $players, isStarted: $isStarted, winnerPublicKey: $winnerPublicKey, totalStake: $totalStake)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Room &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.players, players) &&
            (identical(other.isStarted, isStarted) ||
                other.isStarted == isStarted) &&
            (identical(other.winnerPublicKey, winnerPublicKey) ||
                other.winnerPublicKey == winnerPublicKey) &&
            (identical(other.totalStake, totalStake) ||
                other.totalStake == totalStake));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(players),
      isStarted,
      winnerPublicKey,
      totalStake);

  @JsonKey(ignore: true)
  @override
  _$RoomCopyWith<_Room> get copyWith =>
      __$RoomCopyWithImpl<_Room>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomToJson(this);
  }
}

abstract class _Room implements Room {
  const factory _Room(
      {required String id,
      List<Player> players,
      bool isStarted,
      String? winnerPublicKey,
      int? totalStake}) = _$_Room;

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override
  String get id;
  @override
  List<Player> get players;
  @override
  bool get isStarted;
  @override
  String? get winnerPublicKey;
  @override
  int? get totalStake;
  @override
  @JsonKey(ignore: true)
  _$RoomCopyWith<_Room> get copyWith => throw _privateConstructorUsedError;
}
