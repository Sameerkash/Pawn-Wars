import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/services/repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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

  AuthVM(Reader read)
      : repo = read(repositoryProvider),
        super(const AuthState.loading()) {
    getAccount();
  }

  Future<void> getAccount() async {
    final account = await repo.getUserFromStorage();
    if (account == null) {
      state = const AuthState.unAuthenticated();
    } else {
      state = AuthState.authenticated(
        player: account,
      );
    }
  }

  Future<void> setAccount(
      {required String pubKey, required String nickName}) async {
    final player = Player(
      publicKey: pubKey,
      nickName: nickName,
    );

    await repo.setUserAccountLocal(player);
    getAccount();
  }
}

final authProvider = StateNotifierProvider<AuthVM, AuthState>((ref) {
  return AuthVM(ref.read);
});
