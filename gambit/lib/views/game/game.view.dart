import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/models/room/room.dart';
import 'package:gambit/widgets/text.dart';
import 'game.vm.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:squares/squares.dart';
import 'package:bishop/bishop.dart' as bishop;

class GameView extends HookConsumerWidget {
  final Room room;
  const GameView({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gamePlayProvider);

    useEffect(() {
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        ref.read(gamePlayProvider.notifier).init(room);
      });
    }, []);

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.purple[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: game.map(
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  initial: (state) => Column(
                    children: [
                      BoardController(
                        state: state.gameState!.board,
                        pieceSet: PieceSet.merida(),
                        theme: BoardTheme.BROWN,
                        size: BoardSize.standard(),
                        moves: state.gameState!.moves,
                        canMove: false,
                        draggable: true,
                      ),
                    ],
                  ),
                  play: (state) => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const DisplayText(
                        text: 'Total Stake 35 \$MATIC',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 60),
                      PlayerInfo(
                        player: state.player,
                      ),
                      const SizedBox(height: 30),
                      BoardController(
                        state: state.gameState!.board,
                        pieceSet: PieceSet.merida(),
                        theme: BoardTheme.BROWN,
                        size: BoardSize.standard(),
                        onMove: (move) {
                          ref.read(gamePlayProvider.notifier).makeMove(move);
                        },
                        onPremove: (move) {},
                        moves: state.gameState!.moves,
                        canMove: state.gameState!.canMove,
                        draggable: true,
                      ),
                      const SizedBox(height: 30),
                      PlayerInfo(
                        player: state.room!.players.firstWhere(
                          (player) => player != state.player,
                        ),
                      ),
                    ],
                  ),
                  finished: (state) => Text('${state.room!.winnerPublicKey}'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerInfo extends StatelessWidget {
  final Player player;
  const PlayerInfo({
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
        title: Row(
          children: [
            CircleAvatar(),
            const SizedBox(width: 15),
            DisplayText(
              text: '${player.nickName}',
              color:
                  player.pawn == PlayerPawn.white ? Colors.black : Colors.white,
            ),
            const Spacer(),
            DisplayText(
              text: '\$MATIC ${player.stake}',
              color:
                  player.pawn == PlayerPawn.white ? Colors.black : Colors.white,
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}



// BoardController(
//             state: BoardState(board: game.boardSymbols()),
//             pieceSet: PieceSet.merida(),
//             theme: BoardTheme.BROWN,
//             size: BoardSize.standard(),
//             onMove: (move) {
//               print('move $move');

//               // ref.read(gamePlayProvider.notifier).makeMove(move);
//             },
//             onPremove: (move) {},
//             moves: moves,
//             canMove: true,
//             draggable: true,
//           ),