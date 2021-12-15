// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarkeplaceItem _$$_MarkeplaceItemFromJson(Map<String, dynamic> json) =>
    _$_MarkeplaceItem(
      nftData: NftCollectible.fromJson(json['nftData'] as Map<String, dynamic>),
      itemId: BigInt.parse(json['itemId'] as String),
      tokenId: BigInt.parse(json['tokenId'] as String),
      seller: const CustomEthereumAddressConverter()
          .fromJson(json['seller'] as String),
      owner: const CustomEthereumAddressConverter()
          .fromJson(json['owner'] as String),
      price: BigInt.parse(json['price'] as String),
      sold: json['sold'] as bool,
    );

Map<String, dynamic> _$$_MarkeplaceItemToJson(_$_MarkeplaceItem instance) =>
    <String, dynamic>{
      'nftData': instance.nftData.toJson(),
      'itemId': instance.itemId.toString(),
      'tokenId': instance.tokenId.toString(),
      'seller': const CustomEthereumAddressConverter().toJson(instance.seller),
      'owner': const CustomEthereumAddressConverter().toJson(instance.owner),
      'price': instance.price.toString(),
      'sold': instance.sold,
    };

_$_ContractMarketItem _$$_ContractMarketItemFromJson(
        Map<String, dynamic> json) =>
    _$_ContractMarketItem(
      itemId: BigInt.parse(json['itemId'] as String),
      tokenId: BigInt.parse(json['tokenId'] as String),
      seller: const CustomEthereumAddressConverter()
          .fromJson(json['seller'] as String),
      owner: const CustomEthereumAddressConverter()
          .fromJson(json['owner'] as String),
      price: BigInt.parse(json['price'] as String),
      sold: json['sold'] as bool,
    );

Map<String, dynamic> _$$_ContractMarketItemToJson(
        _$_ContractMarketItem instance) =>
    <String, dynamic>{
      'itemId': instance.itemId.toString(),
      'tokenId': instance.tokenId.toString(),
      'seller': const CustomEthereumAddressConverter().toJson(instance.seller),
      'owner': const CustomEthereumAddressConverter().toJson(instance.owner),
      'price': instance.price.toString(),
      'sold': instance.sold,
    };
