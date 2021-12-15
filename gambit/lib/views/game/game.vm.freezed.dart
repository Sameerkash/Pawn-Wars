// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game.vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GamePlayStateTearOff {
  const _$GamePlayStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Initial initial(
      {GameState? gameState,
      required BoardTheme theme,
      required String bgColor,
      Room? room}) {
    return _Initial(
      gameState: gameState,
      theme: theme,
      bgColor: bgColor,
      room: room,
    );
  }

  _Play play(
      {GameState? gameState,
      required BoardTheme theme,
      required String bgColor,
      Room? room,
      required bishop.Variant variant,
      required Player player}) {
    return _Play(
      gameState: gameState,
      theme: theme,
      bgColor: bgColor,
      room: room,
      variant: variant,
      player: player,
    );
  }

  Finished finished(GameState? gameState, Room? room) {
    return Finished(
      gameState,
      room,
    );
  }
}

/// @nodoc
const $GamePlayState = _$GamePlayStateTearOff();

/// @nodoc
mixin _$GamePlayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)
        initial,
    required TResult Function(GameState? gameState, BoardTheme theme,
            String bgColor, Room? room, bishop.Variant variant, Player player)
        play,
    required TResult Function(GameState? gameState, Room? room) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)?
        initial,
    TResult Function(GameState? gameState, BoardTheme theme, String bgColor,
            Room? room, bishop.Variant variant, Player player)?
        play,
    TResult Function(GameState? gameState, Room? room)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)?
        initial,
    TResult Function(GameState? gameState, BoardTheme theme, String bgColor,
            Room? room, bishop.Variant variant, Player player)?
        play,
    TResult Function(GameState? gameState, Room? room)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(Finished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePlayStateCopyWith<$Res> {
  factory $GamePlayStateCopyWith(
          GamePlayState value, $Res Function(GamePlayState) then) =
      _$GamePlayStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GamePlayStateCopyWithImpl<$Res>
    implements $GamePlayStateCopyWith<$Res> {
  _$GamePlayStateCopyWithImpl(this._value, this._then);

  final GamePlayState _value;
  // ignore: unused_field
  final $Res Function(GamePlayState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$GamePlayStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GamePlayState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GamePlayState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)
        initial,
    required TResult Function(GameState? gameState, BoardTheme theme,
            String bgColor, Room? room, bishop.Variant variant, Player player)
        play,
    required TResult Function(GameState? gameState, Room? room) finished,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)?
        initial,
    TResult Function(GameState? gameState, BoardTheme theme, String bgColor,
            Room? room, bishop.Variant variant, Player player)?
        play,
    TResult Function(GameState? gameState, Room? room)? finished,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)?
        initial,
    TResult Function(GameState? gameState, BoardTheme theme, String bgColor,
            Room? room, bishop.Variant variant, Player player)?
        play,
    TResult Function(GameState? gameState, Room? room)? finished,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(Finished value) finished,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(Finished value)? finished,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GamePlayState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call(
      {GameState? gameState, BoardTheme theme, String bgColor, Room? room});

  $RoomCopyWith<$Res>? get room;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GamePlayStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? gameState = freezed,
    Object? theme = freezed,
    Object? bgColor = freezed,
    Object? room = freezed,
  }) {
    return _then(_Initial(
      gameState: gameState == freezed
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState?,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as BoardTheme,
      bgColor: bgColor == freezed
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
    ));
  }

  @override
  $RoomCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial(
      {this.gameState, required this.theme, required this.bgColor, this.room});

  @override
  final GameState? gameState;
  @override
  final BoardTheme theme;
  @override
  final String bgColor;
  @override
  final Room? room;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GamePlayState.initial(gameState: $gameState, theme: $theme, bgColor: $bgColor, room: $room)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GamePlayState.initial'))
      ..add(DiagnosticsProperty('gameState', gameState))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('bgColor', bgColor))
      ..add(DiagnosticsProperty('room', room));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameState, theme, bgColor, room);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)
        initial,
    required TResult Function(GameState? gameState, BoardTheme theme,
            String bgColor, Room? room, bishop.Variant variant, Player player)
        play,
    required TResult Function(GameState? gameState, Room? room) finished,
  }) {
    return initial(gameState, theme, bgColor, room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)?
        initial,
    TResult Function(GameState? gameState, BoardTheme theme, String bgColor,
            Room? room, bishop.Variant variant, Player player)?
        play,
    TResult Function(GameState? gameState, Room? room)? finished,
  }) {
    return initial?.call(gameState, theme, bgColor, room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)?
        initial,
    TResult Function(GameState? gameState, BoardTheme theme, String bgColor,
            Room? room, bishop.Variant variant, Player player)?
        play,
    TResult Function(GameState? gameState, Room? room)? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameState, theme, bgColor, room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(Finished value) finished,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(Finished value)? finished,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GamePlayState {
  const factory _Initial(
      {GameState? gameState,
      required BoardTheme theme,
      required String bgColor,
      Room? room}) = _$_Initial;

  GameState? get gameState;
  BoardTheme get theme;
  String get bgColor;
  Room? get room;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlayCopyWith<$Res> {
  factory _$PlayCopyWith(_Play value, $Res Function(_Play) then) =
      __$PlayCopyWithImpl<$Res>;
  $Res call(
      {GameState? gameState,
      BoardTheme theme,
      String bgColor,
      Room? room,
      bishop.Variant variant,
      Player player});

  $RoomCopyWith<$Res>? get room;
  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$PlayCopyWithImpl<$Res> extends _$GamePlayStateCopyWithImpl<$Res>
    implements _$PlayCopyWith<$Res> {
  __$PlayCopyWithImpl(_Play _value, $Res Function(_Play) _then)
      : super(_value, (v) => _then(v as _Play));

  @override
  _Play get _value => super._value as _Play;

  @override
  $Res call({
    Object? gameState = freezed,
    Object? theme = freezed,
    Object? bgColor = freezed,
    Object? room = freezed,
    Object? variant = freezed,
    Object? player = freezed,
  }) {
    return _then(_Play(
      gameState: gameState == freezed
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState?,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as BoardTheme,
      bgColor: bgColor == freezed
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      variant: variant == freezed
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as bishop.Variant,
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }

  @override
  $RoomCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value));
    });
  }

  @override
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value));
    });
  }
}

/// @nodoc

class _$_Play with DiagnosticableTreeMixin implements _Play {
  const _$_Play(
      {this.gameState,
      required this.theme,
      required this.bgColor,
      this.room,
      required this.variant,
      required this.player});

  @override
  final GameState? gameState;
  @override
  final BoardTheme theme;
  @override
  final String bgColor;
  @override
  final Room? room;
  @override
  final bishop.Variant variant;
  @override
  final Player player;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GamePlayState.play(gameState: $gameState, theme: $theme, bgColor: $bgColor, room: $room, variant: $variant, player: $player)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GamePlayState.play'))
      ..add(DiagnosticsProperty('gameState', gameState))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('bgColor', bgColor))
      ..add(DiagnosticsProperty('room', room))
      ..add(DiagnosticsProperty('variant', variant))
      ..add(DiagnosticsProperty('player', player));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Play &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.player, player) || other.player == player));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, gameState, theme, bgColor, room, variant, player);

  @JsonKey(ignore: true)
  @override
  _$PlayCopyWith<_Play> get copyWith =>
      __$PlayCopyWithImpl<_Play>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)
        initial,
    required TResult Function(GameState? gameState, BoardTheme theme,
            String bgColor, Room? room, bishop.Variant variant, Player player)
        play,
    required TResult Function(GameState? gameState, Room? room) finished,
  }) {
    return play(gameState, theme, bgColor, room, variant, player);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)?
        initial,
    TResult Function(GameState? gameState, BoardTheme theme, String bgColor,
            Room? room, bishop.Variant variant, Player player)?
        play,
    TResult Function(GameState? gameState, Room? room)? finished,
  }) {
    return play?.call(gameState, theme, bgColor, room, variant, player);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)?
        initial,
    TResult Function(GameState? gameState, BoardTheme theme, String bgColor,
            Room? room, bishop.Variant variant, Player player)?
        play,
    TResult Function(GameState? gameState, Room? room)? finished,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(gameState, theme, bgColor, room, variant, player);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(Finished value) finished,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(Finished value)? finished,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _Play implements GamePlayState {
  const factory _Play(
      {GameState? gameState,
      required BoardTheme theme,
      required String bgColor,
      Room? room,
      required bishop.Variant variant,
      required Player player}) = _$_Play;

  GameState? get gameState;
  BoardTheme get theme;
  String get bgColor;
  Room? get room;
  bishop.Variant get variant;
  Player get player;
  @JsonKey(ignore: true)
  _$PlayCopyWith<_Play> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedCopyWith<$Res> {
  factory $FinishedCopyWith(Finished value, $Res Function(Finished) then) =
      _$FinishedCopyWithImpl<$Res>;
  $Res call({GameState? gameState, Room? room});

  $RoomCopyWith<$Res>? get room;
}

/// @nodoc
class _$FinishedCopyWithImpl<$Res> extends _$GamePlayStateCopyWithImpl<$Res>
    implements $FinishedCopyWith<$Res> {
  _$FinishedCopyWithImpl(Finished _value, $Res Function(Finished) _then)
      : super(_value, (v) => _then(v as Finished));

  @override
  Finished get _value => super._value as Finished;

  @override
  $Res call({
    Object? gameState = freezed,
    Object? room = freezed,
  }) {
    return _then(Finished(
      gameState == freezed
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState?,
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
    ));
  }

  @override
  $RoomCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc

class _$Finished with DiagnosticableTreeMixin implements Finished {
  const _$Finished(this.gameState, this.room);

  @override
  final GameState? gameState;
  @override
  final Room? room;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GamePlayState.finished(gameState: $gameState, room: $room)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GamePlayState.finished'))
      ..add(DiagnosticsProperty('gameState', gameState))
      ..add(DiagnosticsProperty('room', room));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Finished &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameState, room);

  @JsonKey(ignore: true)
  @override
  $FinishedCopyWith<Finished> get copyWith =>
      _$FinishedCopyWithImpl<Finished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)
        initial,
    required TResult Function(GameState? gameState, BoardTheme theme,
            String bgColor, Room? room, bishop.Variant variant, Player player)
        play,
    required TResult Function(GameState? gameState, Room? room) finished,
  }) {
    return finished(gameState, room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)?
        initial,
    TResult Function(GameState? gameState, BoardTheme theme, String bgColor,
            Room? room, bishop.Variant variant, Player player)?
        play,
    TResult Function(GameState? gameState, Room? room)? finished,
  }) {
    return finished?.call(gameState, room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, BoardTheme theme, String bgColor, Room? room)?
        initial,
    TResult Function(GameState? gameState, BoardTheme theme, String bgColor,
            Room? room, bishop.Variant variant, Player player)?
        play,
    TResult Function(GameState? gameState, Room? room)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(gameState, room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(Finished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class Finished implements GamePlayState {
  const factory Finished(GameState? gameState, Room? room) = _$Finished;

  GameState? get gameState;
  Room? get room;
  @JsonKey(ignore: true)
  $FinishedCopyWith<Finished> get copyWith =>
      throw _privateConstructorUsedError;
}
