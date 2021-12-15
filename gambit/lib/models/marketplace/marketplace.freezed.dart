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
      {required NftCollectible nftData,
      required BigInt itemId,
      required BigInt tokenId,
      required EthereumAddress seller,
      required EthereumAddress owner,
      required BigInt price,
      required bool sold}) {
    return _MarkeplaceItem(
      nftData: nftData,
      itemId: itemId,
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
  NftCollectible get nftData => throw _privateConstructorUsedError;
  BigInt get itemId => throw _privateConstructorUsedError;
  BigInt get tokenId => throw _privateConstructorUsedError;
  EthereumAddress get seller => throw _privateConstructorUsedError;
  EthereumAddress get owner => throw _privateConstructorUsedError;
  BigInt get price => throw _privateConstructorUsedError;
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
      {NftCollectible nftData,
      BigInt itemId,
      BigInt tokenId,
      EthereumAddress seller,
      EthereumAddress owner,
      BigInt price,
      bool sold});

  $NftCollectibleCopyWith<$Res> get nftData;
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
    Object? nftData = freezed,
    Object? itemId = freezed,
    Object? tokenId = freezed,
    Object? seller = freezed,
    Object? owner = freezed,
    Object? price = freezed,
    Object? sold = freezed,
  }) {
    return _then(_value.copyWith(
      nftData: nftData == freezed
          ? _value.nftData
          : nftData // ignore: cast_nullable_to_non_nullable
              as NftCollectible,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as EthereumAddress,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as EthereumAddress,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as BigInt,
      sold: sold == freezed
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $NftCollectibleCopyWith<$Res> get nftData {
    return $NftCollectibleCopyWith<$Res>(_value.nftData, (value) {
      return _then(_value.copyWith(nftData: value));
    });
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
      {NftCollectible nftData,
      BigInt itemId,
      BigInt tokenId,
      EthereumAddress seller,
      EthereumAddress owner,
      BigInt price,
      bool sold});

  @override
  $NftCollectibleCopyWith<$Res> get nftData;
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
    Object? nftData = freezed,
    Object? itemId = freezed,
    Object? tokenId = freezed,
    Object? seller = freezed,
    Object? owner = freezed,
    Object? price = freezed,
    Object? sold = freezed,
  }) {
    return _then(_MarkeplaceItem(
      nftData: nftData == freezed
          ? _value.nftData
          : nftData // ignore: cast_nullable_to_non_nullable
              as NftCollectible,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as EthereumAddress,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as EthereumAddress,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as BigInt,
      sold: sold == freezed
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@CustomEthereumAddressConverter()
class _$_MarkeplaceItem implements _MarkeplaceItem {
  const _$_MarkeplaceItem(
      {required this.nftData,
      required this.itemId,
      required this.tokenId,
      required this.seller,
      required this.owner,
      required this.price,
      required this.sold});

  factory _$_MarkeplaceItem.fromJson(Map<String, dynamic> json) =>
      _$$_MarkeplaceItemFromJson(json);

  @override
  final NftCollectible nftData;
  @override
  final BigInt itemId;
  @override
  final BigInt tokenId;
  @override
  final EthereumAddress seller;
  @override
  final EthereumAddress owner;
  @override
  final BigInt price;
  @override
  final bool sold;

  @override
  String toString() {
    return 'MarkeplaceItem(nftData: $nftData, itemId: $itemId, tokenId: $tokenId, seller: $seller, owner: $owner, price: $price, sold: $sold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkeplaceItem &&
            (identical(other.nftData, nftData) || other.nftData == nftData) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.seller, seller) || other.seller == seller) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sold, sold) || other.sold == sold));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, nftData, itemId, tokenId, seller, owner, price, sold);

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
      {required NftCollectible nftData,
      required BigInt itemId,
      required BigInt tokenId,
      required EthereumAddress seller,
      required EthereumAddress owner,
      required BigInt price,
      required bool sold}) = _$_MarkeplaceItem;

  factory _MarkeplaceItem.fromJson(Map<String, dynamic> json) =
      _$_MarkeplaceItem.fromJson;

  @override
  NftCollectible get nftData;
  @override
  BigInt get itemId;
  @override
  BigInt get tokenId;
  @override
  EthereumAddress get seller;
  @override
  EthereumAddress get owner;
  @override
  BigInt get price;
  @override
  bool get sold;
  @override
  @JsonKey(ignore: true)
  _$MarkeplaceItemCopyWith<_MarkeplaceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractMarketItem _$ContractMarketItemFromJson(Map<String, dynamic> json) {
  return _ContractMarketItem.fromJson(json);
}

/// @nodoc
class _$ContractMarketItemTearOff {
  const _$ContractMarketItemTearOff();

  _ContractMarketItem call(
      {required BigInt itemId,
      required BigInt tokenId,
      required EthereumAddress seller,
      required EthereumAddress owner,
      required BigInt price,
      required bool sold}) {
    return _ContractMarketItem(
      itemId: itemId,
      tokenId: tokenId,
      seller: seller,
      owner: owner,
      price: price,
      sold: sold,
    );
  }

  ContractMarketItem fromJson(Map<String, Object?> json) {
    return ContractMarketItem.fromJson(json);
  }
}

/// @nodoc
const $ContractMarketItem = _$ContractMarketItemTearOff();

/// @nodoc
mixin _$ContractMarketItem {
  BigInt get itemId => throw _privateConstructorUsedError;
  BigInt get tokenId => throw _privateConstructorUsedError;
  EthereumAddress get seller => throw _privateConstructorUsedError;
  EthereumAddress get owner => throw _privateConstructorUsedError;
  BigInt get price => throw _privateConstructorUsedError;
  bool get sold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractMarketItemCopyWith<ContractMarketItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractMarketItemCopyWith<$Res> {
  factory $ContractMarketItemCopyWith(
          ContractMarketItem value, $Res Function(ContractMarketItem) then) =
      _$ContractMarketItemCopyWithImpl<$Res>;
  $Res call(
      {BigInt itemId,
      BigInt tokenId,
      EthereumAddress seller,
      EthereumAddress owner,
      BigInt price,
      bool sold});
}

/// @nodoc
class _$ContractMarketItemCopyWithImpl<$Res>
    implements $ContractMarketItemCopyWith<$Res> {
  _$ContractMarketItemCopyWithImpl(this._value, this._then);

  final ContractMarketItem _value;
  // ignore: unused_field
  final $Res Function(ContractMarketItem) _then;

  @override
  $Res call({
    Object? itemId = freezed,
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
              as BigInt,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as EthereumAddress,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as EthereumAddress,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as BigInt,
      sold: sold == freezed
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ContractMarketItemCopyWith<$Res>
    implements $ContractMarketItemCopyWith<$Res> {
  factory _$ContractMarketItemCopyWith(
          _ContractMarketItem value, $Res Function(_ContractMarketItem) then) =
      __$ContractMarketItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {BigInt itemId,
      BigInt tokenId,
      EthereumAddress seller,
      EthereumAddress owner,
      BigInt price,
      bool sold});
}

/// @nodoc
class __$ContractMarketItemCopyWithImpl<$Res>
    extends _$ContractMarketItemCopyWithImpl<$Res>
    implements _$ContractMarketItemCopyWith<$Res> {
  __$ContractMarketItemCopyWithImpl(
      _ContractMarketItem _value, $Res Function(_ContractMarketItem) _then)
      : super(_value, (v) => _then(v as _ContractMarketItem));

  @override
  _ContractMarketItem get _value => super._value as _ContractMarketItem;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? tokenId = freezed,
    Object? seller = freezed,
    Object? owner = freezed,
    Object? price = freezed,
    Object? sold = freezed,
  }) {
    return _then(_ContractMarketItem(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as EthereumAddress,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as EthereumAddress,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as BigInt,
      sold: sold == freezed
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@CustomEthereumAddressConverter()
class _$_ContractMarketItem implements _ContractMarketItem {
  const _$_ContractMarketItem(
      {required this.itemId,
      required this.tokenId,
      required this.seller,
      required this.owner,
      required this.price,
      required this.sold});

  factory _$_ContractMarketItem.fromJson(Map<String, dynamic> json) =>
      _$$_ContractMarketItemFromJson(json);

  @override
  final BigInt itemId;
  @override
  final BigInt tokenId;
  @override
  final EthereumAddress seller;
  @override
  final EthereumAddress owner;
  @override
  final BigInt price;
  @override
  final bool sold;

  @override
  String toString() {
    return 'ContractMarketItem(itemId: $itemId, tokenId: $tokenId, seller: $seller, owner: $owner, price: $price, sold: $sold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContractMarketItem &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.seller, seller) || other.seller == seller) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sold, sold) || other.sold == sold));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, tokenId, seller, owner, price, sold);

  @JsonKey(ignore: true)
  @override
  _$ContractMarketItemCopyWith<_ContractMarketItem> get copyWith =>
      __$ContractMarketItemCopyWithImpl<_ContractMarketItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractMarketItemToJson(this);
  }
}

abstract class _ContractMarketItem implements ContractMarketItem {
  const factory _ContractMarketItem(
      {required BigInt itemId,
      required BigInt tokenId,
      required EthereumAddress seller,
      required EthereumAddress owner,
      required BigInt price,
      required bool sold}) = _$_ContractMarketItem;

  factory _ContractMarketItem.fromJson(Map<String, dynamic> json) =
      _$_ContractMarketItem.fromJson;

  @override
  BigInt get itemId;
  @override
  BigInt get tokenId;
  @override
  EthereumAddress get seller;
  @override
  EthereumAddress get owner;
  @override
  BigInt get price;
  @override
  bool get sold;
  @override
  @JsonKey(ignore: true)
  _$ContractMarketItemCopyWith<_ContractMarketItem> get copyWith =>
      throw _privateConstructorUsedError;
}
