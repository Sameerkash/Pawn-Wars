import 'dart:convert';
import 'dart:io';

import 'package:gambit/abi/NFT.g.dart';
import 'package:gambit/abi/PawnWars.g.dart';
import 'package:gambit/models/nft/nft.collectible.dart';
import 'package:gambit/utils/api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';
import '../abi/PawnWars.g.dart';

class Web3Service {
  late Client httpClient;
  late Web3Client ethClient;
  String rpcUrl = 'https://foolish-bulldog-80.loca.lt';
  String nftStorageUrl = 'ipfs.dweb.link/';

  // 'https://matic-mumbai.chainstacklabs.com';
  final pawnWarsContractAddress =
      EthereumAddress.fromHex('0xB379D84C2D608196007b6A0b07B98982F7B36137');
  final nftContractAddress =
      EthereumAddress.fromHex('0xF3B3E505Cf0e604BA3607dD48225e297bF013CF3');

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

  void setCredentials(String privateKey) {
    credentials = EthPrivateKey.fromHex(privateKey);
  }

  Future<String> createRoom({required String roomCode}) async {
    print(await credentials.extractAddress());
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
    final roomId = await pawnWars.getid(
      roomCode,
    );

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

  Future<void> createMarketItem(
      {required BigInt tokenId, required BigInt price}) async {
    final listingPrice = await pawnWars.getListingPrice();
    print(listingPrice);
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

    print(item);
  }

  // 25000000000000000
  // 25000000000000000

  Future<void> getMarketItems() async {
    final items = await pawnWars.fetchMarketItems();
    print(items);
  }

  Future<void> buyNft({required BigInt itemId}) async {
    final respone = await pawnWars.createMarketSale(
      nftContractAddress,
      itemId,
      credentials: credentials,
    );
    print(respone);
  }
}

final web3Provider = Provider<Web3Service>((ref) {
  return Web3Service();
});
