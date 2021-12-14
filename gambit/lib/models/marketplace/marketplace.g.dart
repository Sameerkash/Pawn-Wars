// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarkeplaceItem _$$_MarkeplaceItemFromJson(Map<String, dynamic> json) =>
    _$_MarkeplaceItem(
      itemId: json['itemId'] as int,
      nftContract: json['nftContract'] as String,
      tokenId: json['tokenId'] as int,
      seller: json['seller'] as String,
      owner: json['owner'] as String,
      price: json['price'] as num,
      sold: json['sold'] as bool,
    );

Map<String, dynamic> _$$_MarkeplaceItemToJson(_$_MarkeplaceItem instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'nftContract': instance.nftContract,
      'tokenId': instance.tokenId,
      'seller': instance.seller,
      'owner': instance.owner,
      'price': instance.price,
      'sold': instance.sold,
    };
