import 'dart:convert';
import 'dart:io';

import 'package:gambit/abi/NFT.g.dart';
import 'package:gambit/abi/PawnWars.g.dart';
import 'package:gambit/models/marketplace/marketplace.dart';
import 'package:gambit/models/nft/nft.collectible.dart';
import 'package:gambit/utils/api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

class Web3Service {
  late Client httpClient;
  late Web3Client ethClient;
  String rpcUrl = 'https://honest-chipmunk-64.loca.lt';
  String nftStorageUrl = 'ipfs.dweb.link/';

  // 'https://matic-mumbai.chainstacklabs.com';
  final pawnWarsContractAddress =
      EthereumAddress.fromHex('0xDdD44b91eC830f9F96858223dd1318515CBECbc6');
  final nftContractAddress =
      EthereumAddress.fromHex('0xb1c14F4cb3Bdc65cD3dE35f48553C5268A4b2d45');

  late PawnWars pawnWars;
  late NFT nft;
  late Credentials credentials;

  Web3Service() {
    httpClient = Client();
    ethClient = Web3Client(rpcUrl, httpClient);
    pawnWars = PawnWars(
      address: pawnWarsContractAddress,
      client: ethClient,
      chainId: 5777,
    );

    nft = NFT(
      address: nftContractAddress,
      client: ethClient,
      chainId: 5777,
    );
  }

  void setCredentials(String privateKey) async {
    credentials = EthPrivateKey.fromHex(privateKey);
    final address = await credentials.extractAddress();
    print('address: $address');
  }

  Future<String> createRoom({required String roomCode}) async {
    final result = await pawnWars.setid(
      roomCode,
      credentials: credentials,
      transaction: Transaction(
        gasPrice: EtherAmount.fromUnitAndValue(EtherUnit.gwei, 20),
      ),
    );

    return result;
  }

  Future<BigInt> getRoomID({required String roomCode}) async {
    final roomId = await pawnWars.getid(roomCode);

    return roomId;
  }

  Future<String> createPlayer(
      {required BigInt roomId, required double stake}) async {
    final player = await pawnWars.createPlayer(
      roomId,
      credentials: credentials,
      transaction: Transaction(
        value:
            EtherAmount.fromUnitAndValue(EtherUnit.ether, BigInt.from(stake)),
      ),
    );

    return player;
  }

  Future<String> claimWinner({
    required BigInt roomId,
    required String playerPublicKey,
  }) async {
    final playerAddress = EthereumAddress.fromHex(playerPublicKey);

    final player = await pawnWars.Winner(
      roomId,
      playerAddress,
      credentials: credentials,
      transaction: Transaction(
        gasPrice: EtherAmount.fromUnitAndValue(EtherUnit.gwei, 20),
      ),
    );

    return player;
  }

  Future<EtherAmount> getBalance() async {
    final address = await credentials.extractAddress();
    final amount = await ethClient.getBalance(address);
    print('Balance: ${amount.getInWei} $address');
    return amount;
  }

  Future<void> getImage({required cid}) async {
    final response =
        await httpClient.get(Uri(host: 'https://$cid.$nftStorageUrl'));
    print(response.bodyBytes);

    // nft.createToken(tokenURI, credentials: credentials)
  }

  Future<String> addImageToNftStorage({required File file}) async {
    try {
      final response = await httpClient.post(
        Uri(
          host: 'api.nft.storage',
          scheme: 'https',
          path: 'upload',
        ),
        headers: {
          'Accept': "*/*",
          'Content-Length': File(file.path).lengthSync().toString(),
          'Connection': 'keep-alive',
          'Authorization': 'Bearer $nftStorageApiKey',
        },
        body: file.readAsBytesSync(),
      );
      final json = jsonDecode(response.body);
      final cid = json['value']['cid'];

      return 'https://$cid.$nftStorageUrl';
    } catch (e) {
      print(e);
      return 'Error';
    }
  }

  Future<String?> addDataToNftStorage(
      {required NftCollectible nftCollectible}) async {
    try {
      final response = await httpClient.post(
        Uri(
          host: 'api.nft.storage',
          scheme: 'https',
          path: 'upload',
        ),
        headers: {
          'Accept': "*/*",
          'Connection': 'keep-alive',
          'Authorization': 'Bearer $nftStorageApiKey',
        },
        body: jsonEncode(nftCollectible.toJson()),
      );

      final json = jsonDecode(response.body);
      final cid = json['value']['cid'];

      return 'https://$cid.$nftStorageUrl';
    } catch (e) {
      print(e);
      return 'Error';
    }
  }

  Future<String> createToken({required String tokenURI}) async {
    final txHash = await nft.createToken(
      tokenURI,
      credentials: credentials,
    );

    return txHash;
  }

  Future<String> createMarketItem(
      {required BigInt tokenId, required BigInt price}) async {
    final listingPrice = await pawnWars.getListingPrice();
    final item = await pawnWars.createMarketItem(
      nftContractAddress,
      tokenId,
      price,
      credentials: credentials,
      transaction: Transaction(
        value: EtherAmount.fromUnitAndValue(
            EtherUnit.wei, BigInt.from(25000000000000000)),
      ),
    );
    return item;
  }
  // 25000000000000000

  Future<List<ContractMarketItem>> getMarketItems() async {
    final List<ContractMarketItem> items = [];
    final result = await pawnWars.fetchMarketItems();

    for (var item in result) {
      items.add(ContractMarketItem(
        itemId: item[0],
        tokenId: item[2],
        seller: item[3],
        owner: item[4],
        price: item[5],
        sold: item[6],
      ));
    }
    return items;
  }

  Future<List<ContractMarketItem>> getUserOwnedItems() async {
    final List<ContractMarketItem> items = [];
    final address = await credentials.extractAddress();
    final result = await pawnWars.fetchMyNFTs(address);

    for (var item in result) {
      items.add(ContractMarketItem(
        itemId: item[0],
        tokenId: item[2],
        seller: item[3],
        owner: item[4],
        price: item[5],
        sold: item[6],
      ));
    }
    return items;
  }

  Future<List<ContractMarketItem>> getUserCreatedItems() async {
    final List<ContractMarketItem> items = [];
    final address = await credentials.extractAddress();
    final result = await pawnWars.fetchItemsCreated(address);

    for (var item in result) {
      items.add(ContractMarketItem(
        itemId: item[0],
        tokenId: item[2],
        seller: item[3],
        owner: item[4],
        price: item[5],
        sold: item[6],
      ));
    }
    return items;
  }

  Future<String> getTokenUri(BigInt tokenId) async {
    final tokenURI = await nft.tokenURI(tokenId);
    return tokenURI;
  }

  Future<NftCollectible?> getTokenMetadata({required String tokenURI}) async {
    final tokenMetadata = await httpClient.get(Uri.parse(tokenURI));
    return NftCollectible.fromJson(jsonDecode(tokenMetadata.body));
  }

  Future<String> buyNft({required BigInt itemId, required BigInt price}) async {
    final txHash = await pawnWars.createMarketSale(
      nftContractAddress,
      itemId,
      credentials: credentials,
      transaction: Transaction(
        value: EtherAmount.fromUnitAndValue(EtherUnit.wei, price),
      ),
    );
    return txHash;
  }
}

final web3Provider = Provider<Web3Service>((ref) {
  return Web3Service();
});
