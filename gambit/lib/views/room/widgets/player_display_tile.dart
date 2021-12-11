
import 'package:flutter/material.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/widgets/text.dart';

class PlayerDisplayTile extends StatelessWidget {
  final Player player;
  const PlayerDisplayTile({
    Key? key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: player.pawn == PlayerPawn.white ? Colors.white : Colors.black,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://i.pravatar.cc/300',
          ),
        ),
        title: DisplayText(
          text: player.nickName!,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: player.pawn == PlayerPawn.white ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
