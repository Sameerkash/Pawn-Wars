import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'game.vm.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:squares/squares.dart';
import 'package:bishop/bishop.dart' as bishop;

class GameView extends HookConsumerWidget {
  GameView({Key? key}) : super(key: key);

  // // int boardOrientation = WHITE;
  // bishop.Game game = bishop.Game(variant: bishop.Variant.crazyhouse());
  // bishop.Engine? engine;
  // BoardTheme theme = BoardTheme.BROWN;

  // void onMove(Move move) {}

  // void onPremove(Move move) {}

  // List<Move> moves = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gamePlayProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: game.map(
                loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                initial: (state) => BoardController(
                  state: state.gameState!.board,
                  pieceSet: PieceSet.merida(),
                  theme: BoardTheme.BROWN,
                  size: BoardSize.standard(),
                  onMove: (move) {
                    print('move $move');
                    ref.read(gamePlayProvider.notifier).play();
                  },
                  onPremove: (move) {
                    print('move $move');
                    ref.read(gamePlayProvider.notifier).play();
                  },
                  moves: state.gameState!.moves,
                  canMove: true,
                  //  state.gameState!.canMove,
                  draggable: true,
                ),
                play: (state) => BoardController(
                  state: state.gameState!.board,
                  pieceSet: PieceSet.merida(),
                  theme: BoardTheme.BROWN,
                  size: BoardSize.standard(),
                  onMove: (move) {
                    print('move $move');

                    ref.read(gamePlayProvider.notifier).makeMove(move);
                  },
                  onPremove: (move) {
                    
                  },
                  moves: state.gameState!.moves,
                  canMove: true,
                  // state.gameState!.canMove,
                  draggable: true,
                ),
                finished: (_) => Container(),
              ),
            ),
            TextButton(
              onPressed: () {
                ref.read(gamePlayProvider.notifier).play();
              },
              child: Text(
                'PLAY',
              ),
            )
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