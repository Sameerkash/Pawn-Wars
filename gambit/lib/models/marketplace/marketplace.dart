import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/nft/nft.collectible.dart';
import 'package:web3dart/web3dart.dart';
part 'marketplace.freezed.dart';
part 'marketplace.g.dart';

@freezed
class MarkeplaceItem with _$MarkeplaceItem {
  @CustomEthereumAddressConverter()
  const factory MarkeplaceItem({
    required NftCollectible nftData,
    required BigInt itemId,
    required BigInt tokenId,
    required EthereumAddress seller,
    required EthereumAddress owner,
    required BigInt price,
    required bool sold,
  }) = _MarkeplaceItem;

  factory MarkeplaceItem.fromJson(Map<String, dynamic> json) =>
      _$MarkeplaceItemFromJson(json);
}

@freezed
class ContractMarketItem with _$ContractMarketItem {
  @CustomEthereumAddressConverter()
  const factory ContractMarketItem({
    required BigInt itemId,
    required BigInt tokenId,
    required EthereumAddress seller,
    required EthereumAddress owner,
    required BigInt price,
    required bool sold,
  }) = _ContractMarketItem;

  factory ContractMarketItem.fromJson(Map<String, dynamic> json) =>
      _$ContractMarketItemFromJson(json);
}

class CustomEthereumAddressConverter
    implements JsonConverter<EthereumAddress, String> {
  const CustomEthereumAddressConverter();

  @override
  EthereumAddress fromJson(String address) {
    return EthereumAddress.fromHex(address);
  }

  @override
  String toJson(EthereumAddress address) => address.hex;
}
