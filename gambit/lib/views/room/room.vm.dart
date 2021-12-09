import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/models/room/room.dart';
import 'package:gambit/services/socket.io.dart';
import 'package:gambit/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
part 'room.vm.freezed.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.inital() = _Initial;
  const factory RoomState.created(
    Room room,
  ) = _Created;
  const factory RoomState.joined(
    Room room,
    List<Player> players,
  ) = _Joined;
}

class RoomVM extends StateNotifier<RoomState> {
  final SocketIOService socketService;
  RoomVM(Reader read)
      : socketService = read(socketProvider),
        super(const RoomState.inital());

  void generateRoom() {
    final currentState = state;

    if (currentState is _Initial) {
      final code = const Uuid().v1();
      final room = Room(
        id: code,
        players: [],
      );
      state = RoomState.created(room);

      socketService.socket.emit(SocketType.createRoom, room.toJson());
    }
  }

  void joinRoom() {
    final currentState = state;

    if (currentState is _Created) {
      final room = currentState.room;
      const player = Player(
        publicKey: 'publickey',
        nickName: 'Player1',
      );
      room.players.add(player);
      state = RoomState.joined(room, room.players);

      socketService.socket.emit(SocketType.joinRoom, [
        room.toJson(),
        player.toJson(),
      ]);
    }
  }
}

final roomProvider = StateNotifierProvider<RoomVM, RoomState>((ref) {
  return RoomVM(ref.read);
});
