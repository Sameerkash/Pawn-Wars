import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:gambit/models/marketplace/marketplace.dart';
import 'package:gambit/models/nft/nft.collectible.dart';
import 'package:gambit/services/web3.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'markeplace.vm.freezed.dart';

@freezed
class MarketplaceState with _$MarketplaceState {
  const factory MarketplaceState.loading() = _Loading;
  const factory MarketplaceState.data({
    @Default([]) List<MarkeplaceItem> items,
  }) = _Data;
  const factory MarketplaceState.error({String? error}) = _Error;
}

class MarketPlaceStateVM extends StateNotifier<MarketplaceState> {
  Web3Service web3;

  double? itemPrice;
  BigInt? tokenId;

  MarketPlaceStateVM(Reader read)
      : web3 = read(web3Provider),
        super(const MarketplaceState.loading()) {
    getMarketItems();

    web3.nft.transferEvents().listen((event) {
      if (itemPrice != null) {
        tokenId = event.tokenId;
      }
    });
  }

  BigInt? getTokenId() {
    return tokenId;
  }

  Future<void> getMarketItems() async {
    List<MarkeplaceItem> marketItems = [];

    final nftContractItems = await web3.getMarketItems();

    for (var element in nftContractItems) {
      final metaUri = await web3.getTokenUri(element.tokenId);
      final metaData = await web3.getTokenMetadata(tokenURI: metaUri);

      final item = MarkeplaceItem(
        itemId: element.itemId,
        tokenId: element.tokenId,
        sold: element.sold,
        seller: element.seller,
        nftData: metaData!,
        price: element.price,
        owner: element.owner,
      );
      marketItems.add(item);
    }

    state = MarketplaceState.data(
      items: marketItems,
    );
    print('marketItems: $marketItems ');
  }

  Future<void> createNft({
    required File file,
    required String title,
    required String description,
    required double price,
    NftSkin? skinColor,
    String? backgroundColor,
  }) async {
    late NftCollectible nftCollectible;

    final nftImage = await web3.addImageToNftStorage(file: file);
    print('addDataToNftStorage $nftImage');

    if (skinColor != null) {
      nftCollectible = NftCollectible(
        title: title,
        description: description,
        imageUrl: nftImage,
        nftType: NftType.skin(skinColor: skinColor),
      );
    } else if (backgroundColor != null && backgroundColor.isNotEmpty) {
      nftCollectible = NftCollectible(
        title: title,
        description: description,
        imageUrl: nftImage,
        nftType: NftType.background(
          colorHex: backgroundColor,
          backgroundImage: nftImage,
        ),
      );
    } else {
      nftCollectible = NftCollectible(
        title: title,
        description: description,
        imageUrl: nftImage,
        nftType: NftType.art(
          image: nftImage,
        ),
      );
    }
    itemPrice = price;
    final nftData =
        await web3.addDataToNftStorage(nftCollectible: nftCollectible);
    final nftToken = await web3.createToken(tokenURI: nftData!);
    print('addDataToNftStorage $nftData, createToken $nftToken');
  }

  Future<void> createMarketItem(
      {required BigInt tokenId, required double price}) async {
    final marketItem = await web3.createMarketItem(
        tokenId: tokenId, price: BigInt.from(price));
    print('createMarketItem $marketItem');
  }

  Future<void> buyNft({required BigInt itemId, required BigInt price}) async {
    final nftTx = await web3.buyNft(itemId: itemId, price: price);
    print('buyNft $nftTx');
    getMarketItems();
  }
}

final marketPlaceProvider =
    StateNotifierProvider.autoDispose<MarketPlaceStateVM, MarketplaceState>(
        (ref) {
  return MarketPlaceStateVM((ref.read));
});
