// Generated code, do not modify. Run `build_runner build` to re-generate!
// @dart=2.12
import 'package:web3dart/web3dart.dart' as _i1;

final _contractAbi = _i1.ContractAbi.fromJson(
    '[{"anonymous":false,"inputs":[{"indexed":true,"internalType":"uint256","name":"itemId","type":"uint256"},{"indexed":true,"internalType":"address","name":"nftContract","type":"address"},{"indexed":true,"internalType":"uint256","name":"tokenId","type":"uint256"},{"indexed":false,"internalType":"address","name":"seller","type":"address"},{"indexed":false,"internalType":"address","name":"owner","type":"address"},{"indexed":false,"internalType":"uint256","name":"price","type":"uint256"},{"indexed":false,"internalType":"bool","name":"sold","type":"bool"}],"name":"MarketItemCreated","type":"event"},{"inputs":[{"internalType":"address","name":"nftContract","type":"address"},{"internalType":"uint256","name":"tokenId","type":"uint256"},{"internalType":"uint256","name":"price","type":"uint256"}],"name":"createMarketItem","outputs":[],"stateMutability":"payable","type":"function","payable":true},{"inputs":[{"internalType":"address","name":"nftContract","type":"address"},{"internalType":"uint256","name":"itemId","type":"uint256"}],"name":"createMarketSale","outputs":[],"stateMutability":"payable","type":"function","payable":true},{"inputs":[{"internalType":"address","name":"user","type":"address"}],"name":"fetchItemsCreated","outputs":[{"components":[{"internalType":"uint256","name":"itemId","type":"uint256"},{"internalType":"address","name":"nftContract","type":"address"},{"internalType":"uint256","name":"tokenId","type":"uint256"},{"internalType":"address payable","name":"seller","type":"address"},{"internalType":"address payable","name":"owner","type":"address"},{"internalType":"uint256","name":"price","type":"uint256"},{"internalType":"bool","name":"sold","type":"bool"}],"internalType":"struct PawnWarsMarket.MarketItem[]","name":"","type":"tuple[]"}],"stateMutability":"view","type":"function","constant":true},{"inputs":[],"name":"fetchMarketItems","outputs":[{"components":[{"internalType":"uint256","name":"itemId","type":"uint256"},{"internalType":"address","name":"nftContract","type":"address"},{"internalType":"uint256","name":"tokenId","type":"uint256"},{"internalType":"address payable","name":"seller","type":"address"},{"internalType":"address payable","name":"owner","type":"address"},{"internalType":"uint256","name":"price","type":"uint256"},{"internalType":"bool","name":"sold","type":"bool"}],"internalType":"struct PawnWarsMarket.MarketItem[]","name":"","type":"tuple[]"}],"stateMutability":"view","type":"function","constant":true},{"inputs":[{"internalType":"address","name":"user","type":"address"}],"name":"fetchMyNFTs","outputs":[{"components":[{"internalType":"uint256","name":"itemId","type":"uint256"},{"internalType":"address","name":"nftContract","type":"address"},{"internalType":"uint256","name":"tokenId","type":"uint256"},{"internalType":"address payable","name":"seller","type":"address"},{"internalType":"address payable","name":"owner","type":"address"},{"internalType":"uint256","name":"price","type":"uint256"},{"internalType":"bool","name":"sold","type":"bool"}],"internalType":"struct PawnWarsMarket.MarketItem[]","name":"","type":"tuple[]"}],"stateMutability":"view","type":"function","constant":true},{"inputs":[],"name":"fund","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function","constant":true},{"inputs":[],"name":"getListingPrice","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function","constant":true},{"inputs":[{"internalType":"string","name":"roomID","type":"string"}],"name":"setid","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"string","name":"roomID","type":"string"}],"name":"getid","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function","constant":true},{"inputs":[{"internalType":"uint256","name":"ID","type":"uint256"}],"name":"createPlayer","outputs":[],"stateMutability":"payable","type":"function","payable":true},{"inputs":[{"internalType":"uint256","name":"ID","type":"uint256"}],"name":"TotalBet","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function","constant":true},{"inputs":[{"internalType":"uint256","name":"ID","type":"uint256"},{"internalType":"address","name":"player","type":"address"}],"name":"Winner","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"player","type":"address"}],"name":"getBet","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function","constant":true},{"inputs":[{"internalType":"uint256","name":"ID","type":"uint256"}],"name":"Draw","outputs":[],"stateMutability":"nonpayable","type":"function"}]',
    'PawnWars');

class PawnWars extends _i1.GeneratedContract {
  PawnWars(
      {required _i1.EthereumAddress address,
      required _i1.Web3Client client,
      int? chainId})
      : super(_i1.DeployedContract(_contractAbi, address), client, chainId);

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> createMarketItem(
      _i1.EthereumAddress nftContract, BigInt tokenId, BigInt price,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[0];
    assert(checkSignature(function, '58eb2df5'));
    final params = [nftContract, tokenId, price];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> createMarketSale(
      _i1.EthereumAddress nftContract, BigInt itemId,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[1];
    assert(checkSignature(function, 'c23b139e'));
    final params = [nftContract, itemId];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<List<dynamic>> fetchItemsCreated(_i1.EthereumAddress user,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[2];
    assert(checkSignature(function, 'c8338456'));
    final params = [user];
    final response = await read(function, params, atBlock);
    return (response[0] as List<dynamic>).cast<dynamic>();
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<List<dynamic>> fetchMarketItems({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[3];
    assert(checkSignature(function, '0f08efe0'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as List<dynamic>).cast<dynamic>();
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<List<dynamic>> fetchMyNFTs(_i1.EthereumAddress user,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[4];
    assert(checkSignature(function, '10afee1e'));
    final params = [user];
    final response = await read(function, params, atBlock);
    return (response[0] as List<dynamic>).cast<dynamic>();
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> fund({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[5];
    assert(checkSignature(function, 'b60d4288'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> getListingPrice({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[6];
    assert(checkSignature(function, '12e85585'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> setid(String roomID,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[7];
    assert(checkSignature(function, 'c24d443a'));
    final params = [roomID];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> getid(String roomID, {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[8];
    assert(checkSignature(function, '4c93703b'));
    final params = [roomID];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> createPlayer(BigInt ID,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[9];
    assert(checkSignature(function, 'dbfb6b54'));
    final params = [ID];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> TotalBet(BigInt ID, {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[10];
    assert(checkSignature(function, 'c8601654'));
    final params = [ID];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> Winner(BigInt ID, _i1.EthereumAddress player,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[11];
    assert(checkSignature(function, '6b5936f5'));
    final params = [ID, player];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> getBet(_i1.EthereumAddress player,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[12];
    assert(checkSignature(function, 'f7566b49'));
    final params = [player];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> Draw(BigInt ID,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[13];
    assert(checkSignature(function, '3fd10e0b'));
    final params = [ID];
    return write(credentials, transaction, function, params);
  }

  /// Returns a live stream of all MarketItemCreated events emitted by this contract.
  Stream<MarketItemCreated> marketItemCreatedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('MarketItemCreated');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return MarketItemCreated(decoded);
    });
  }
}

class MarketItemCreated {
  MarketItemCreated(List<dynamic> response)
      : itemId = (response[0] as BigInt),
        nftContract = (response[1] as _i1.EthereumAddress),
        tokenId = (response[2] as BigInt),
        seller = (response[3] as _i1.EthereumAddress),
        owner = (response[4] as _i1.EthereumAddress),
        price = (response[5] as BigInt),
        sold = (response[6] as bool);

  final BigInt itemId;

  final _i1.EthereumAddress nftContract;

  final BigInt tokenId;

  final _i1.EthereumAddress seller;

  final _i1.EthereumAddress owner;

  final BigInt price;

  final bool sold;
}
