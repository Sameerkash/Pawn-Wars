import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/models/room/room.dart';
import 'package:gambit/services/repository.dart';
import 'package:gambit/services/socket.io.dart';
import 'package:gambit/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'join.room.vm.freezed.dart';


@freezed
class JoinRoomState with _$JoinRoomState {
  const factory JoinRoomState.inital({@Default(0) int stake, String? code}) =
      _Initial;
  const factory JoinRoomState.joined(
    final Room room,
  ) = _Joined;
  const factory JoinRoomState.error({
    @Default('Invalid Room Code') final String error,
  }) = _Error;
  const factory JoinRoomState.gameInitialized(
    final Room room,
  ) = GameInitialzied;
}

class JoinRoomVM extends StateNotifier<JoinRoomState> {
  final SocketIOService socketService;
  final Repository repo;

  JoinRoomVM(Reader read)
      : socketService = read(socketProvider),
        repo = read(repositoryProvider),
        super(const JoinRoomState.inital()) {
    socketService.socket.connect();
    socketService.joinRoomResponse.listen((room) {
      print(room);
      state = JoinRoomState.joined(room);
    });

    socketService.gameInitializedResponse.listen((isInitalized) {
      if (isInitalized) {
        final current = state;
        if (current is _Joined) {
          state = JoinRoomState.gameInitialized(
            current.room,
          );
        }
      }
    });
  }

  void setCode(String code) {
    final currentState = state;

    if (currentState is _Initial) {
      state = currentState.copyWith(code: code);
    }
  }

  void setStake(int stake) {
    final currentState = state;

    if (currentState is _Initial) {
      state = currentState.copyWith(stake: stake);
    }
  }

  void joinRoom() async {
    final currentState = state;
    final player = await repo.getUserFromStorage();

    if (currentState is _Initial) {
      final p = player!.copyWith(stake: currentState.stake);

      socketService.socket.emit(
        SocketType.joinRoom,
        [
          currentState.code,
          p.toJson(),
        ],
      );

      print(player);
    }
  }

  void setRoom(Room room) {
    final currentState = state;
    if (currentState is _Initial) {
      state = JoinRoomState.joined(room);
    }
  }
}

final joinRoomProvider =
    StateNotifierProvider<JoinRoomVM, JoinRoomState>((ref) {
  return JoinRoomVM(ref.read);
});
