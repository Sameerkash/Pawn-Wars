import 'dart:async';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/utils/constants.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SocketIOService {
  final IO.Socket socket = IO.io(
    'https://307a-2405-201-d007-7008-f9e1-36b9-dd83-2ed5.ngrok.io',
    OptionBuilder()
        .setTransports(['websocket'])
        .disableAutoConnect() // for Flutter or Dart VM
        .build(),
  );

  SocketIOService() {
    socket.connect();

    socket.onConnect((data) {
      _onConnect.add(data);
    });

    socket.on(SocketType.joinRoom, (data) {
      _joinRoom.add(data);
    });

    socket.on(SocketType.gameMoves, (data) {
      _gameMoves.add(data);
    });
  }

  final _onConnect = StreamController<String?>();
  final _onDisconnect = StreamController<String>();
  final _joinRoom = StreamController<List<Player>>();
  final _gameMoves = StreamController<String>();

  Stream<String?> get onConnectResponse => _onConnect.stream;
  Stream<String> get onDisconnectResponse => _onDisconnect.stream;
  Stream<List<Player>> get joinRoomResponse => _joinRoom.stream;
  Stream<String> get gameMovesResponse => _gameMoves.stream;

  void dispose() {
    _onConnect.close();
    _onDisconnect.close();
    _joinRoom.close();
    _gameMoves.close();
  }
}

final socketProvider = Provider<SocketIOService>((ref) {
  return SocketIOService();
});
