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

  MarketPlaceStateVM(Reader read)
      : web3 = read(web3Provider),
        super(const MarketplaceState.loading()) {
    web3.nft.transferEvents().listen((event) {
      print(event.tokenId);
      print(itemPrice);

      if (itemPrice != null) {
        createMarketItem(tokenId: event.tokenId, price: itemPrice!);
      }

      getMarketItems();
    });
  }

  Future<void> getMarketItems() async {
    final items = await web3.getMarketItems();

    state = MarketplaceState.data(items: []);
  }

  Future<void> createNft({
    required File file,
    required String title,
    required String description,
    required double price,
    NftSkin? skinColor,
    String? backgroundColor,
  }) async {
    /// Create NFtCollectible
    late NftCollectible nftCollectible;

    final nftImage = await web3.addImageToNftStorage(file: file);
    print(nftImage);

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

  }

  Future<void> createMarketItem(
      {required BigInt tokenId, required double price}) async {
    final marketItem = await web3.createMarketItem(
        tokenId: tokenId, price: BigInt.from(price));
  }
}

final marketPlaceProvider =
    StateNotifierProvider.autoDispose<MarketPlaceStateVM, MarketplaceState>(
        (ref) {
  return MarketPlaceStateVM((ref.read));
});
