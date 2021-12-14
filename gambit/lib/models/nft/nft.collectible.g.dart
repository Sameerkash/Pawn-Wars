// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft.collectible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NftCollectible _$$_NftCollectibleFromJson(Map<String, dynamic> json) =>
    _$_NftCollectible(
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      nftType: NftType.fromJson(json['nftType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NftCollectibleToJson(_$_NftCollectible instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'nftType': instance.nftType.toJson(),
    };

_$Skin _$$SkinFromJson(Map<String, dynamic> json) => _$Skin(
      skinColor: $enumDecode(_$NftSkinEnumMap, json['skinColor']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SkinToJson(_$Skin instance) => <String, dynamic>{
      'skinColor': _$NftSkinEnumMap[instance.skinColor],
      'type': instance.$type,
    };

const _$NftSkinEnumMap = {
  NftSkin.blue: 'BLUE',
  NftSkin.pink: 'PINK',
};

_$Backgorund _$$BackgorundFromJson(Map<String, dynamic> json) => _$Backgorund(
      colorHex: json['colorHex'] as String?,
      backgroundImage: json['backgroundImage'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BackgorundToJson(_$Backgorund instance) =>
    <String, dynamic>{
      'colorHex': instance.colorHex,
      'backgroundImage': instance.backgroundImage,
      'type': instance.$type,
    };

_$Art _$$ArtFromJson(Map<String, dynamic> json) => _$Art(
      image: json['image'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ArtToJson(_$Art instance) => <String, dynamic>{
      'image': instance.image,
      'type': instance.$type,
    };
