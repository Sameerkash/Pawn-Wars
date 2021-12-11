import 'dart:async';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/models/room/room.dart';
import 'package:gambit/utils/constants.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SocketIOService {
  final IO.Socket socket = IO.io(
    'https://5d55-2405-201-d007-7008-3c56-a938-9c0c-d0b9.ngrok.io',
    OptionBuilder()
        .setTransports(['websocket'])
        .disableAutoConnect() // for Flutter or Dart VM
        .build(),
  );

  SocketIOService() {
    socket.onConnect((data) {
      _onConnect.add(data);
    });

    socket.on(SocketType.joinRoom, (data) {
      final room = Room.fromJson(data);
      _joinRoom.add(room);
    });

    socket.on(SocketType.gameMoves, (data) {
      _gameMoves.add(data);
    });

    socket.on(SocketType.gameIntialized, (data) {
      _gameInitialized.add(data);
    });
  }

  final _onConnect = StreamController<String?>();
  final _onDisconnect = StreamController<String>();
  final _joinRoom = StreamController<Room>();
  final _gameMoves = StreamController<String>();
  final _gameInitialized = StreamController<bool>();

  Stream<String?> get onConnectResponse => _onConnect.stream;
  Stream<String> get onDisconnectResponse => _onDisconnect.stream;
  Stream<Room> get joinRoomResponse => _joinRoom.stream;
  Stream<String> get gameMovesResponse => _gameMoves.stream;
  Stream<bool> get gameInitializedResponse => _gameInitialized.stream;

  void dispose() {
    _onConnect.close();
    _onDisconnect.close();
    _joinRoom.close();
    _gameMoves.close();
    _gameInitialized.close();
  }
}

final socketProvider = Provider<SocketIOService>((ref) {
  return SocketIOService();
});
