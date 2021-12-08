import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class SocketIOService {
  final _onConnect = StreamController<String>();

  void Function(String) get onConnectAdd => _onConnect.sink.add;

  Stream<String> get onConnectResponse => _onConnect.stream;

  void dispose() {
    _onConnect.close();
  }
}

final socketProvider = Provider<SocketIOService>((ref) {
  return SocketIOService();
});
