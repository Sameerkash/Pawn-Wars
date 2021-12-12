import 'package:gambit/abi/PawnWars.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';
import '../abi/PawnWars.g.dart';

class Web3Service {
  late Client httpClient;
  late Web3Client ethClient;
  String rpcUrl =
      'https://3d0d-2405-201-d007-7008-186d-3ccf-be61-2d28.ngrok.io';
  final pawnWarsContractAddress =
      EthereumAddress.fromHex('0x483acf0D3Ef3A5439a8E7835966d09642dDE914B');

  late PawnWars pawnWars;
  late Credentials credentials;

  Web3Service() {
    httpClient = Client();
    ethClient = Web3Client(rpcUrl, httpClient);
    pawnWars = PawnWars(
      address: pawnWarsContractAddress,
      client: ethClient,
      chainId: 5777,
    );
  }

  void setCredentials(
    String privateKey,
  ) {
    print(privateKey);
    credentials = EthPrivateKey.fromHex(privateKey);
  }

  Future<String> createRoom({required String roomCode}) async {
    final result = await pawnWars.setid(
      roomCode,
      credentials: credentials,
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
        value: EtherAmount.fromUnitAndValue(EtherUnit.ether, stake),
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
    );

    return player;
  }

  Future<EtherAmount> getBalance() async {
    final address = await credentials.extractAddress();
    final amount = await ethClient.getBalance(address);
    return amount;
  }
}

final web3Provider = Provider<Web3Service>((ref) {
  return Web3Service();
});
