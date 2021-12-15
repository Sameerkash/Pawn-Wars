import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/marketplace/marketplace.dart';
import 'package:gambit/services/web3.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'sell.vm.freezed.dart';

@freezed
class MyNftsState with _$MyNftsState {
  const factory MyNftsState.loading() = _Loading;
  const factory MyNftsState.data({
    @Default([]) List<MarkeplaceItem> createdItems,
    @Default([]) List<MarkeplaceItem> ownedItems,
  }) = _Data;
  const factory MyNftsState.error({String? error}) = _Error;
}

class SellVM extends StateNotifier<MyNftsState> {
  final Web3Service web3;

  SellVM(Reader read)
      : web3 = read(web3Provider),
        super(const MyNftsState.loading()) {
    getNfts();
  }

  Future<void> getNfts() async {
    List<MarkeplaceItem> ownedItems = [];
    List<MarkeplaceItem> createdItems = [];

    final _ownedItems = await web3.getUserOwnedItems();
    final _createdItems = await web3.getUserCreatedItems();

    for (var element in _ownedItems) {
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
      ownedItems.add(item);
    }

    for (var element in _createdItems) {
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
      createdItems.add(item);
    }

    state = MyNftsState.data(
      createdItems: createdItems,
      ownedItems: ownedItems,
    );
    print('createdItems: $createdItems ownItems: $ownedItems');
  }
}

final sellProvider = StateNotifierProvider.autoDispose<SellVM, MyNftsState>((ref) {
  return SellVM(ref.read);
});
