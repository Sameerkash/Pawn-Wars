import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/models/room/room.dart';
import 'package:gambit/services/repository.dart';
import 'package:gambit/services/socket.io.dart';
import 'package:gambit/services/web3.dart';
import 'package:gambit/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
part 'create.room.vm.freezed.dart';

@freezed
class CreateRoomState with _$CreateRoomState {
  const factory CreateRoomState.inital({
    PlayerPawn? pawn,
  }) = _Initial;
  const factory CreateRoomState.created({
    required Room room,
    PlayerPawn? pawn,
  }) = _Created;
  const factory CreateRoomState.joined(
    final Room room,
    List<Player> players,
  ) = _Joined;

  const factory CreateRoomState.gameInitialized(
    final Room room,
    List<Player> players,
  ) = GameInitialzied;
}

class CreateRoomVM extends StateNotifier<CreateRoomState> {
  final SocketIOService socketService;
  final Repository repo;
  final Web3Service web3;
  BigInt? roomId;

  CreateRoomVM(Reader read)
      : socketService = read(socketProvider),
        repo = read(repositoryProvider),
        web3 = read(web3Provider),
        super(const CreateRoomState.inital()) {
    socketService.socket.connect();

    socketService.joinRoomResponse.listen((room) {
      print(room);
      state = CreateRoomState.joined(room, room.players);
    });

    socketService.gameInitializedResponse.listen((isInitalized) {
      if (isInitalized) {
        final current = state;
        if (current is _Joined) {
          state = CreateRoomState.gameInitialized(
            current.room,
            current.room.players,
          );
        }
      }
    });
  }

  void setPawnColor(PlayerPawn pawn) {
    final currentState = state;

    if (currentState is _Initial) {
      state = CreateRoomState.inital(
        pawn: pawn,
      );
    }
  }

  void generateRoom() async {
    final currentState = state;

    if (currentState is _Initial) {
      final code = const Uuid().v1();
      final room =
          Room(code: code, players: [], pawnClaimed: currentState.pawn);
      state = CreateRoomState.created(
        room: room,
        pawn: currentState.pawn,
      );

      final web3Res = await web3.createRoom(roomCode: code);
      roomId = await web3.getRoomID(roomCode: code);

      print(web3Res);

      socketService.socket.emit(SocketType.createRoom, room.toJson());
    }
  }

  void joinRoom(double stake) async {
    final currentState = state;
    final player = await repo.getUserFromStorage();

    if (currentState is _Created) {
      final room = currentState.room.copyWith(totalStake: stake);
      final p = player!.copyWith(pawn: currentState.pawn, stake: stake);

      final web3Res = await web3.createPlayer(roomId: roomId!, stake: stake);

      print(web3Res);

      socketService.socket.emit(SocketType.joinRoom, [
        room.code,
        p.toJson(),
      ]);
    }
  }

  void initalizeGame() {
    final currentState = state;
    if (currentState is _Joined) {
      socketService.socket.emit(
        SocketType.gameIntialized,
        [currentState.room.code, true],
      );
    }
  }
}

final roomProvider =
    StateNotifierProvider<CreateRoomVM, CreateRoomState>((ref) {
  return CreateRoomVM(ref.read);
});
