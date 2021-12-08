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
      {GameState? gameState, bishop.Game? game, bishop.Engine? engine}) {
    return _Initial(
      gameState: gameState,
      game: game,
      engine: engine,
    );
  }

  _Play play({GameState? gameState, bishop.Game? game, bishop.Engine? engine}) {
    return _Play(
      gameState: gameState,
      game: game,
      engine: engine,
    );
  }

  _Finished finished(GameState? gameState) {
    return _Finished(
      gameState,
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
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)
        initial,
    required TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)
        play,
    required TResult Function(GameState? gameState) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        initial,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        play,
    TResult Function(GameState? gameState)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        initial,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        play,
    TResult Function(GameState? gameState)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(_Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Finished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Finished value)? finished,
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

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GamePlayState.loading()';
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
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)
        initial,
    required TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)
        play,
    required TResult Function(GameState? gameState) finished,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        initial,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        play,
    TResult Function(GameState? gameState)? finished,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        initial,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        play,
    TResult Function(GameState? gameState)? finished,
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
    required TResult Function(_Finished value) finished,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Finished value)? finished,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Finished value)? finished,
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
  $Res call({GameState? gameState, bishop.Game? game, bishop.Engine? engine});
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
    Object? game = freezed,
    Object? engine = freezed,
  }) {
    return _then(_Initial(
      gameState: gameState == freezed
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState?,
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as bishop.Game?,
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as bishop.Engine?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.gameState, this.game, this.engine});

  @override
  final GameState? gameState;
  @override
  final bishop.Game? game;
  @override
  final bishop.Engine? engine;

  @override
  String toString() {
    return 'GamePlayState.initial(gameState: $gameState, game: $game, engine: $engine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.engine, engine) || other.engine == engine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameState, game, engine);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)
        initial,
    required TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)
        play,
    required TResult Function(GameState? gameState) finished,
  }) {
    return initial(gameState, game, engine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        initial,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        play,
    TResult Function(GameState? gameState)? finished,
  }) {
    return initial?.call(gameState, game, engine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        initial,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        play,
    TResult Function(GameState? gameState)? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameState, game, engine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(_Finished value) finished,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Finished value)? finished,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Finished value)? finished,
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
      bishop.Game? game,
      bishop.Engine? engine}) = _$_Initial;

  GameState? get gameState;
  bishop.Game? get game;
  bishop.Engine? get engine;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlayCopyWith<$Res> {
  factory _$PlayCopyWith(_Play value, $Res Function(_Play) then) =
      __$PlayCopyWithImpl<$Res>;
  $Res call({GameState? gameState, bishop.Game? game, bishop.Engine? engine});
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
    Object? game = freezed,
    Object? engine = freezed,
  }) {
    return _then(_Play(
      gameState: gameState == freezed
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState?,
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as bishop.Game?,
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as bishop.Engine?,
    ));
  }
}

/// @nodoc

class _$_Play implements _Play {
  const _$_Play({this.gameState, this.game, this.engine});

  @override
  final GameState? gameState;
  @override
  final bishop.Game? game;
  @override
  final bishop.Engine? engine;

  @override
  String toString() {
    return 'GamePlayState.play(gameState: $gameState, game: $game, engine: $engine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Play &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.engine, engine) || other.engine == engine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameState, game, engine);

  @JsonKey(ignore: true)
  @override
  _$PlayCopyWith<_Play> get copyWith =>
      __$PlayCopyWithImpl<_Play>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)
        initial,
    required TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)
        play,
    required TResult Function(GameState? gameState) finished,
  }) {
    return play(gameState, game, engine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        initial,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        play,
    TResult Function(GameState? gameState)? finished,
  }) {
    return play?.call(gameState, game, engine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        initial,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        play,
    TResult Function(GameState? gameState)? finished,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(gameState, game, engine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(_Finished value) finished,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Finished value)? finished,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Finished value)? finished,
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
      bishop.Game? game,
      bishop.Engine? engine}) = _$_Play;

  GameState? get gameState;
  bishop.Game? get game;
  bishop.Engine? get engine;
  @JsonKey(ignore: true)
  _$PlayCopyWith<_Play> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishedCopyWith<$Res> {
  factory _$FinishedCopyWith(_Finished value, $Res Function(_Finished) then) =
      __$FinishedCopyWithImpl<$Res>;
  $Res call({GameState? gameState});
}

/// @nodoc
class __$FinishedCopyWithImpl<$Res> extends _$GamePlayStateCopyWithImpl<$Res>
    implements _$FinishedCopyWith<$Res> {
  __$FinishedCopyWithImpl(_Finished _value, $Res Function(_Finished) _then)
      : super(_value, (v) => _then(v as _Finished));

  @override
  _Finished get _value => super._value as _Finished;

  @override
  $Res call({
    Object? gameState = freezed,
  }) {
    return _then(_Finished(
      gameState == freezed
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState?,
    ));
  }
}

/// @nodoc

class _$_Finished implements _Finished {
  const _$_Finished(this.gameState);

  @override
  final GameState? gameState;

  @override
  String toString() {
    return 'GamePlayState.finished(gameState: $gameState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Finished &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameState);

  @JsonKey(ignore: true)
  @override
  _$FinishedCopyWith<_Finished> get copyWith =>
      __$FinishedCopyWithImpl<_Finished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)
        initial,
    required TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)
        play,
    required TResult Function(GameState? gameState) finished,
  }) {
    return finished(gameState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        initial,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        play,
    TResult Function(GameState? gameState)? finished,
  }) {
    return finished?.call(gameState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        initial,
    TResult Function(
            GameState? gameState, bishop.Game? game, bishop.Engine? engine)?
        play,
    TResult Function(GameState? gameState)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(gameState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(_Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Finished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements GamePlayState {
  const factory _Finished(GameState? gameState) = _$_Finished;

  GameState? get gameState;
  @JsonKey(ignore: true)
  _$FinishedCopyWith<_Finished> get copyWith =>
      throw _privateConstructorUsedError;
}
