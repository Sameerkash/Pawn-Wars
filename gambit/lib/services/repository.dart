import 'package:gambit/models/player/player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:sembast/sembast_io.dart';

class Repository {
  sembast.Database? _db;

  /// File path to a file in the current directory
  String dbName = 'pawnwars.db';

  /// dbFactory instance
  sembast.DatabaseFactory dbFactory = databaseFactoryIo;

  // Store
  final _store = sembast.stringMapStoreFactory.store('common_store');

  static const userAccount = 'USER_ACCOUNT';
  static const userCredentials = 'CREDENTIALS';

  Future<sembast.Database> getDb() async {
    if (_db == null) {
      var path = (await getApplicationSupportDirectory()).path + "/" + dbName;
      _db = await dbFactory.openDatabase(path);
    }
    return _db!;
  }

  Future<Player?> getUserFromStorage() async {
    final res = await _store.record(userAccount).get(await getDb());
    if (res != null) {
      return Player.fromJson(res);
    }

    return null;
  }

  Future<void> setUserAccountLocal(Player player) async {
    await _store.record(userAccount).put(await getDb(), player.toJson());
  }

  Future<PlayerCredentials> getCredentials() async {
    final res = await _store.record(userCredentials).get(await getDb());
    return PlayerCredentials.fromJson(res!);
  }

  Future<void> setCredentials(PlayerCredentials credentials) async {
    await _store.record(userCredentials).put(
          await getDb(),
          credentials.toJson(),
        );
  }

  Future<void> deleteAccount() async {
    await _store.record(userAccount).delete(await getDb());
  }
}

final repositoryProvider = Provider<Repository>((ref) {
  return Repository();
});
