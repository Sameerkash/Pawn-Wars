// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'marketplace.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarkeplaceItem _$MarkeplaceItemFromJson(Map<String, dynamic> json) {
  return _MarkeplaceItem.fromJson(json);
}

/// @nodoc
class _$MarkeplaceItemTearOff {
  const _$MarkeplaceItemTearOff();

  _MarkeplaceItem call(
      {required int itemId,
      required String nftContract,
      required int tokenId,
      required String seller,
      required String owner,
      required num price,
      required bool sold}) {
    return _MarkeplaceItem(
      itemId: itemId,
      nftContract: nftContract,
      tokenId: tokenId,
      seller: seller,
      owner: owner,
      price: price,
      sold: sold,
    );
  }

  MarkeplaceItem fromJson(Map<String, Object?> json) {
    return MarkeplaceItem.fromJson(json);
  }
}

/// @nodoc
const $MarkeplaceItem = _$MarkeplaceItemTearOff();

/// @nodoc
mixin _$MarkeplaceItem {
  int get itemId => throw _privateConstructorUsedError;
  String get nftContract => throw _privateConstructorUsedError;
  int get tokenId => throw _privateConstructorUsedError;
  String get seller => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  bool get sold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkeplaceItemCopyWith<MarkeplaceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkeplaceItemCopyWith<$Res> {
  factory $MarkeplaceItemCopyWith(
          MarkeplaceItem value, $Res Function(MarkeplaceItem) then) =
      _$MarkeplaceItemCopyWithImpl<$Res>;
  $Res call(
      {int itemId,
      String nftContract,
      int tokenId,
      String seller,
      String owner,
      num price,
      bool sold});
}

/// @nodoc
class _$MarkeplaceItemCopyWithImpl<$Res>
    implements $MarkeplaceItemCopyWith<$Res> {
  _$MarkeplaceItemCopyWithImpl(this._value, this._then);

  final MarkeplaceItem _value;
  // ignore: unused_field
  final $Res Function(MarkeplaceItem) _then;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? nftContract = freezed,
    Object? tokenId = freezed,
    Object? seller = freezed,
    Object? owner = freezed,
    Object? price = freezed,
    Object? sold = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      nftContract: nftContract == freezed
          ? _value.nftContract
          : nftContract // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as int,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      sold: sold == freezed
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MarkeplaceItemCopyWith<$Res>
    implements $MarkeplaceItemCopyWith<$Res> {
  factory _$MarkeplaceItemCopyWith(
          _MarkeplaceItem value, $Res Function(_MarkeplaceItem) then) =
      __$MarkeplaceItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int itemId,
      String nftContract,
      int tokenId,
      String seller,
      String owner,
      num price,
      bool sold});
}

/// @nodoc
class __$MarkeplaceItemCopyWithImpl<$Res>
    extends _$MarkeplaceItemCopyWithImpl<$Res>
    implements _$MarkeplaceItemCopyWith<$Res> {
  __$MarkeplaceItemCopyWithImpl(
      _MarkeplaceItem _value, $Res Function(_MarkeplaceItem) _then)
      : super(_value, (v) => _then(v as _MarkeplaceItem));

  @override
  _MarkeplaceItem get _value => super._value as _MarkeplaceItem;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? nftContract = freezed,
    Object? tokenId = freezed,
    Object? seller = freezed,
    Object? owner = freezed,
    Object? price = freezed,
    Object? sold = freezed,
  }) {
    return _then(_MarkeplaceItem(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      nftContract: nftContract == freezed
          ? _value.nftContract
          : nftContract // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as int,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      sold: sold == freezed
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarkeplaceItem implements _MarkeplaceItem {
  const _$_MarkeplaceItem(
      {required this.itemId,
      required this.nftContract,
      required this.tokenId,
      required this.seller,
      required this.owner,
      required this.price,
      required this.sold});

  factory _$_MarkeplaceItem.fromJson(Map<String, dynamic> json) =>
      _$$_MarkeplaceItemFromJson(json);

  @override
  final int itemId;
  @override
  final String nftContract;
  @override
  final int tokenId;
  @override
  final String seller;
  @override
  final String owner;
  @override
  final num price;
  @override
  final bool sold;

  @override
  String toString() {
    return 'MarkeplaceItem(itemId: $itemId, nftContract: $nftContract, tokenId: $tokenId, seller: $seller, owner: $owner, price: $price, sold: $sold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkeplaceItem &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.nftContract, nftContract) ||
                other.nftContract == nftContract) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.seller, seller) || other.seller == seller) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sold, sold) || other.sold == sold));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, itemId, nftContract, tokenId, seller, owner, price, sold);

  @JsonKey(ignore: true)
  @override
  _$MarkeplaceItemCopyWith<_MarkeplaceItem> get copyWith =>
      __$MarkeplaceItemCopyWithImpl<_MarkeplaceItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarkeplaceItemToJson(this);
  }
}

abstract class _MarkeplaceItem implements MarkeplaceItem {
  const factory _MarkeplaceItem(
      {required int itemId,
      required String nftContract,
      required int tokenId,
      required String seller,
      required String owner,
      required num price,
      required bool sold}) = _$_MarkeplaceItem;

  factory _MarkeplaceItem.fromJson(Map<String, dynamic> json) =
      _$_MarkeplaceItem.fromJson;

  @override
  int get itemId;
  @override
  String get nftContract;
  @override
  int get tokenId;
  @override
  String get seller;
  @override
  String get owner;
  @override
  num get price;
  @override
  bool get sold;
  @override
  @JsonKey(ignore: true)
  _$MarkeplaceItemCopyWith<_MarkeplaceItem> get copyWith =>
      throw _privateConstructorUsedError;
}
