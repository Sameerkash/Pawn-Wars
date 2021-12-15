import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:gambit/models/marketplace/marketplace.dart';
import 'package:gambit/models/nft/nft.collectible.dart';
import 'package:gambit/services/repository.dart';
import 'package:gambit/services/web3.dart';
import 'package:gambit/utils/functions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:squares/squares.dart';
part 'customize.vm.freezed.dart';

@freezed
class CustomizeState with _$CustomizeState {
  const factory CustomizeState.loading() = _Loading;
  const factory CustomizeState.loaded({
    @Default([]) List<MarkeplaceItem> items,
    @Default(BoardTheme.BROWN) BoardTheme boardTheme,
    @Default('#FFFFFF') String bgColor,
  }) = _Loaded;
  const factory CustomizeState.error(String? message) = _Error;
}

class CustomizeVM extends StateNotifier<CustomizeState> {
  final Repository repo;
  final Web3Service web3;
  late NftType nftType;

  CustomizeVM(Reader read)
      : repo = read(repositoryProvider),
        web3 = read(web3Provider),
        super(const CustomizeState.loading()) {
    getNfts();
  }

  Future<void> getNfts() async {
    List<MarkeplaceItem> ownedItems = [];

    final _ownedItems = await web3.getUserOwnedItems();

    for (var element in _ownedItems) {
      final metaUri = await web3.getTokenUri(element.tokenId);
      final metaData = await web3.getTokenMetadata(tokenURI: metaUri);

      if (metaData!.nftType is Skin || metaData.nftType is Backgorund) {
        final item = MarkeplaceItem(
          itemId: element.itemId,
          tokenId: element.tokenId,
          sold: element.sold,
          seller: element.seller,
          nftData: metaData,
          price: element.price,
          owner: element.owner,
        );
        ownedItems.add(item);
      }
    }

    state = CustomizeState.loaded(
      items: ownedItems,
    );

    print('ownedItems: $ownedItems');
  }

  setNftPreference({required NftType nftType}) {
    print('ownedItems: $nftType');

    final current = state;
    if (current is _Loaded) {
      if (nftType is Skin) {
        this.nftType = nftType;
        final boardTheme = getBoardFromNFTtype(nftType.skinColor);
        state = CustomizeState.loaded(
          items: current.items,
          boardTheme: boardTheme,
        );
      } else if (nftType is Backgorund) {
        final _bgColor = nftType.colorHex ?? current.bgColor;
        state = CustomizeState.loaded(
          items: current.items,
          boardTheme: current.boardTheme,
          bgColor: _bgColor,
        );
      }
    }
  }

  void savePreferences() async {
    final current = state;
    if (current is _Loaded) {
      await repo.saveThemePreferences(nftType);
    }
  }
}

final customizeProvider =
    StateNotifierProvider.autoDispose<CustomizeVM, CustomizeState>((ref) {
  return CustomizeVM(ref.read);
});
