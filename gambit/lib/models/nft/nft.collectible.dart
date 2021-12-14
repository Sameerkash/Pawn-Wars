import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/enums/enums.dart';
part 'nft.collectible.freezed.dart';
part 'nft.collectible.g.dart';

@freezed
class NftCollectible with _$NftCollectible {
  const factory NftCollectible({
    required String title,
    required String description,
    required String imageUrl,
    required NftType nftType,
  }) = _NftCollectible;

  factory NftCollectible.fromJson(Map<String, dynamic> json) =>
      _$NftCollectibleFromJson(json);
}

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.none)
class NftType with _$NftType {
  const factory NftType.skin({
    required NftSkin skinColor,
  }) = Skin;

  const factory NftType.background({
    String? colorHex,
    String? backgroundImage,
  }) = Backgorund;

  const factory NftType.art({
    String? image,
  }) = Art;

  factory NftType.fromJson(Map<String, dynamic> json) =>
      _$NftTypeFromJson(json);
}
