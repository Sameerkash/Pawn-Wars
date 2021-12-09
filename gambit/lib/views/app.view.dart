import 'package:flutter/material.dart';
import 'package:gambit/views/room/room.view.dart';

import 'game/game.view.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoomView();
  }
}
