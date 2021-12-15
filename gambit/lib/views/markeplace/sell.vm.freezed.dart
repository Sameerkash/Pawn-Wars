// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sell.vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyNftsStateTearOff {
  const _$MyNftsStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Data data(
      {List<MarkeplaceItem> createdItems = const [],
      List<MarkeplaceItem> ownedItems = const []}) {
    return _Data(
      createdItems: createdItems,
      ownedItems: ownedItems,
    );
  }

  _Error error({String? error}) {
    return _Error(
      error: error,
    );
  }
}

/// @nodoc
const $MyNftsState = _$MyNftsStateTearOff();

/// @nodoc
mixin _$MyNftsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)
        data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)?
        data,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)?
        data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyNftsStateCopyWith<$Res> {
  factory $MyNftsStateCopyWith(
          MyNftsState value, $Res Function(MyNftsState) then) =
      _$MyNftsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyNftsStateCopyWithImpl<$Res> implements $MyNftsStateCopyWith<$Res> {
  _$MyNftsStateCopyWithImpl(this._value, this._then);

  final MyNftsState _value;
  // ignore: unused_field
  final $Res Function(MyNftsState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$MyNftsStateCopyWithImpl<$Res>
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
    return 'MyNftsState.loading()';
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
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)
        data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)?
        data,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)?
        data,
    TResult Function(String? error)? error,
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
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MyNftsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call(
      {List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$MyNftsStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? createdItems = freezed,
    Object? ownedItems = freezed,
  }) {
    return _then(_Data(
      createdItems: createdItems == freezed
          ? _value.createdItems
          : createdItems // ignore: cast_nullable_to_non_nullable
              as List<MarkeplaceItem>,
      ownedItems: ownedItems == freezed
          ? _value.ownedItems
          : ownedItems // ignore: cast_nullable_to_non_nullable
              as List<MarkeplaceItem>,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data({this.createdItems = const [], this.ownedItems = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<MarkeplaceItem> createdItems;
  @JsonKey(defaultValue: const [])
  @override
  final List<MarkeplaceItem> ownedItems;

  @override
  String toString() {
    return 'MyNftsState.data(createdItems: $createdItems, ownedItems: $ownedItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality()
                .equals(other.createdItems, createdItems) &&
            const DeepCollectionEquality()
                .equals(other.ownedItems, ownedItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdItems),
      const DeepCollectionEquality().hash(ownedItems));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)
        data,
    required TResult Function(String? error) error,
  }) {
    return data(createdItems, ownedItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)?
        data,
    TResult Function(String? error)? error,
  }) {
    return data?.call(createdItems, ownedItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)?
        data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(createdItems, ownedItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements MyNftsState {
  const factory _Data(
      {List<MarkeplaceItem> createdItems,
      List<MarkeplaceItem> ownedItems}) = _$_Data;

  List<MarkeplaceItem> get createdItems;
  List<MarkeplaceItem> get ownedItems;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$MyNftsStateCopyWithImpl<$Res>
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
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'MyNftsState.error(error: $error)';
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
    required TResult Function() loading,
    required TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)
        data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)?
        data,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<MarkeplaceItem> createdItems, List<MarkeplaceItem> ownedItems)?
        data,
    TResult Function(String? error)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MyNftsState {
  const factory _Error({String? error}) = _$_Error;

  String? get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
