import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/services/repository.dart';
import 'package:gambit/services/web3.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web3dart/web3dart.dart';
part 'auth.vm.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.authenticated({
    required Player player,
  }) = Authenticated;
  const factory AuthState.unAuthenticated() = UnAuthenticated;
}

class AuthVM extends StateNotifier<AuthState> {
  Repository repo;
  Web3Service web3;
  AuthVM(Reader read)
      : repo = read(repositoryProvider),
        web3 = read(web3Provider),
        super(const AuthState.loading()) {
    getAccount();
  }

  Future<void> getAccount() async {
    final account = await repo.getUserFromStorage();
    if (account == null) {
      state = const AuthState.unAuthenticated();
    } else {
      final playerCred = await repo.getCredentials();
      web3.setCredentials(playerCred.privateKey);
      final balance = await getBalance();
      final playerAcc = account.copyWith(balance: balance);
      print(balance.getInEther);
      state = AuthState.authenticated(
        player: playerAcc,
      );
    }
  }

  Future<EtherAmount> getBalance() async {
    final balance = await web3.getBalance();
    return balance;
  }

  Future<void> setAccount(
      {required String pubKey,
      required String nickName,
      required privateKey}) async {
    final player = Player(
      publicKey: pubKey,
      nickName: nickName,
    );

    final credentials =
        PlayerCredentials(publicKey: pubKey, privateKey: privateKey);

    await repo.setCredentials(credentials);
    await repo.setUserAccountLocal(player);
    getAccount();
    print('$pubKey , $nickName , $privateKey');
  }
}

final authProvider = StateNotifierProvider<AuthVM, AuthState>((ref) {
  return AuthVM(ref.read);
});
