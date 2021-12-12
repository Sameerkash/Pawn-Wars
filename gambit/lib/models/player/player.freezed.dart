// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
class _$PlayerTearOff {
  const _$PlayerTearOff();

  _Player call(
      {required String publicKey,
      String? nickName,
      String? avatar,
      PlayerPawn? pawn,
      double stake = 0,
      @JsonKey(ignore: true) EtherAmount? balance}) {
    return _Player(
      publicKey: publicKey,
      nickName: nickName,
      avatar: avatar,
      pawn: pawn,
      stake: stake,
      balance: balance,
    );
  }

  Player fromJson(Map<String, Object?> json) {
    return Player.fromJson(json);
  }
}

/// @nodoc
const $Player = _$PlayerTearOff();

/// @nodoc
mixin _$Player {
  String get publicKey => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  PlayerPawn? get pawn => throw _privateConstructorUsedError;
  double get stake => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  EtherAmount? get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call(
      {String publicKey,
      String? nickName,
      String? avatar,
      PlayerPawn? pawn,
      double stake,
      @JsonKey(ignore: true) EtherAmount? balance});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? nickName = freezed,
    Object? avatar = freezed,
    Object? pawn = freezed,
    Object? stake = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      pawn: pawn == freezed
          ? _value.pawn
          : pawn // ignore: cast_nullable_to_non_nullable
              as PlayerPawn?,
      stake: stake == freezed
          ? _value.stake
          : stake // ignore: cast_nullable_to_non_nullable
              as double,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as EtherAmount?,
    ));
  }
}

/// @nodoc
abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String publicKey,
      String? nickName,
      String? avatar,
      PlayerPawn? pawn,
      double stake,
      @JsonKey(ignore: true) EtherAmount? balance});
}

/// @nodoc
class __$PlayerCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(_Player _value, $Res Function(_Player) _then)
      : super(_value, (v) => _then(v as _Player));

  @override
  _Player get _value => super._value as _Player;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? nickName = freezed,
    Object? avatar = freezed,
    Object? pawn = freezed,
    Object? stake = freezed,
    Object? balance = freezed,
  }) {
    return _then(_Player(
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      pawn: pawn == freezed
          ? _value.pawn
          : pawn // ignore: cast_nullable_to_non_nullable
              as PlayerPawn?,
      stake: stake == freezed
          ? _value.stake
          : stake // ignore: cast_nullable_to_non_nullable
              as double,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as EtherAmount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Player implements _Player {
  const _$_Player(
      {required this.publicKey,
      this.nickName,
      this.avatar,
      this.pawn,
      this.stake = 0,
      @JsonKey(ignore: true) this.balance});

  factory _$_Player.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerFromJson(json);

  @override
  final String publicKey;
  @override
  final String? nickName;
  @override
  final String? avatar;
  @override
  final PlayerPawn? pawn;
  @JsonKey(defaultValue: 0)
  @override
  final double stake;
  @override
  @JsonKey(ignore: true)
  final EtherAmount? balance;

  @override
  String toString() {
    return 'Player(publicKey: $publicKey, nickName: $nickName, avatar: $avatar, pawn: $pawn, stake: $stake, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Player &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.pawn, pawn) || other.pawn == pawn) &&
            (identical(other.stake, stake) || other.stake == stake) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, publicKey, nickName, avatar, pawn, stake, balance);

  @JsonKey(ignore: true)
  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerToJson(this);
  }
}

abstract class _Player implements Player {
  const factory _Player(
      {required String publicKey,
      String? nickName,
      String? avatar,
      PlayerPawn? pawn,
      double stake,
      @JsonKey(ignore: true) EtherAmount? balance}) = _$_Player;

  factory _Player.fromJson(Map<String, dynamic> json) = _$_Player.fromJson;

  @override
  String get publicKey;
  @override
  String? get nickName;
  @override
  String? get avatar;
  @override
  PlayerPawn? get pawn;
  @override
  double get stake;
  @override
  @JsonKey(ignore: true)
  EtherAmount? get balance;
  @override
  @JsonKey(ignore: true)
  _$PlayerCopyWith<_Player> get copyWith => throw _privateConstructorUsedError;
}

PlayerCredentials _$PlayerCredentialsFromJson(Map<String, dynamic> json) {
  return _PlayerCredentials.fromJson(json);
}

/// @nodoc
class _$PlayerCredentialsTearOff {
  const _$PlayerCredentialsTearOff();

  _PlayerCredentials call(
      {required String publicKey, required String privateKey}) {
    return _PlayerCredentials(
      publicKey: publicKey,
      privateKey: privateKey,
    );
  }

  PlayerCredentials fromJson(Map<String, Object?> json) {
    return PlayerCredentials.fromJson(json);
  }
}

/// @nodoc
const $PlayerCredentials = _$PlayerCredentialsTearOff();

/// @nodoc
mixin _$PlayerCredentials {
  String get publicKey => throw _privateConstructorUsedError;
  String get privateKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCredentialsCopyWith<PlayerCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCredentialsCopyWith<$Res> {
  factory $PlayerCredentialsCopyWith(
          PlayerCredentials value, $Res Function(PlayerCredentials) then) =
      _$PlayerCredentialsCopyWithImpl<$Res>;
  $Res call({String publicKey, String privateKey});
}

/// @nodoc
class _$PlayerCredentialsCopyWithImpl<$Res>
    implements $PlayerCredentialsCopyWith<$Res> {
  _$PlayerCredentialsCopyWithImpl(this._value, this._then);

  final PlayerCredentials _value;
  // ignore: unused_field
  final $Res Function(PlayerCredentials) _then;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? privateKey = freezed,
  }) {
    return _then(_value.copyWith(
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PlayerCredentialsCopyWith<$Res>
    implements $PlayerCredentialsCopyWith<$Res> {
  factory _$PlayerCredentialsCopyWith(
          _PlayerCredentials value, $Res Function(_PlayerCredentials) then) =
      __$PlayerCredentialsCopyWithImpl<$Res>;
  @override
  $Res call({String publicKey, String privateKey});
}

/// @nodoc
class __$PlayerCredentialsCopyWithImpl<$Res>
    extends _$PlayerCredentialsCopyWithImpl<$Res>
    implements _$PlayerCredentialsCopyWith<$Res> {
  __$PlayerCredentialsCopyWithImpl(
      _PlayerCredentials _value, $Res Function(_PlayerCredentials) _then)
      : super(_value, (v) => _then(v as _PlayerCredentials));

  @override
  _PlayerCredentials get _value => super._value as _PlayerCredentials;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? privateKey = freezed,
  }) {
    return _then(_PlayerCredentials(
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerCredentials implements _PlayerCredentials {
  const _$_PlayerCredentials(
      {required this.publicKey, required this.privateKey});

  factory _$_PlayerCredentials.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerCredentialsFromJson(json);

  @override
  final String publicKey;
  @override
  final String privateKey;

  @override
  String toString() {
    return 'PlayerCredentials(publicKey: $publicKey, privateKey: $privateKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerCredentials &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.privateKey, privateKey) ||
                other.privateKey == privateKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicKey, privateKey);

  @JsonKey(ignore: true)
  @override
  _$PlayerCredentialsCopyWith<_PlayerCredentials> get copyWith =>
      __$PlayerCredentialsCopyWithImpl<_PlayerCredentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerCredentialsToJson(this);
  }
}

abstract class _PlayerCredentials implements PlayerCredentials {
  const factory _PlayerCredentials(
      {required String publicKey,
      required String privateKey}) = _$_PlayerCredentials;

  factory _PlayerCredentials.fromJson(Map<String, dynamic> json) =
      _$_PlayerCredentials.fromJson;

  @override
  String get publicKey;
  @override
  String get privateKey;
  @override
  @JsonKey(ignore: true)
  _$PlayerCredentialsCopyWith<_PlayerCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}
