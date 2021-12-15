import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/models/room/room.dart';
import 'package:gambit/views/auth/auth.vm.dart';
import 'package:gambit/views/game/widgets/dialog.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/snack.dart';
import 'package:gambit/widgets/text.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'game.vm.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:squares/squares.dart';
import 'package:go_router/go_router.dart';

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
        body: LoaderOverlay(
          overlayWidget: const SpinKitChasingDots(
            color: Colors.purple,
            size: 50.0,
          ),
          child: Container(
            color: Colors.purple[400],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    play: (state) {
                      final total = state.room!.players[0].stake +
                          state.room!.players[1].stake;

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DisplayText(
                            text: 'Total Stake $total \$MATIC',
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
                            theme: state.theme,
                            size: BoardSize.standard(),
                            onMove: (move) {
                              ref
                                  .read(gamePlayProvider.notifier)
                                  .makeMove(move);
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
                      );
                    },
                    finished: (state) => Container(
                      color: Colors.purpleAccent,
                      child: SizedBox(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const DisplayText(
                              text: 'Check Mate!',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(height: 40),
                            if (state.room!.winnerPublicKey != null) ...[
                              Image.asset(
                                'assets/bishop.png',
                                width: 120,
                                height: 200,
                              ),
                              const SizedBox(height: 10),
                              const DisplayText(
                                text: 'You Won!',
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: ElevatedDisplayButton(
                                  text: 'Claim Stake',
                                  onPressed: () async {
                                    context.loaderOverlay.show();

                                    final tx = await ref
                                        .read(gamePlayProvider.notifier)
                                        .claimStake();


                                    context.loaderOverlay.hide();
                                    showSnackBar(context, message: 'Tx: $tx');

                                    ref
                                        .read(authProvider.notifier)
                                        .getAccount();
                                    context.go('/');
                                  },
                                ),
                              )
                            ] else ...[
                              Image.asset(
                                'assets/pawn.png',
                                width: 120,
                                height: 200,
                              ),
                              const SizedBox(height: 10),
                              const DisplayText(
                                text: 'You Lost!',
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: ElevatedDisplayButton(
                                  text: 'Go Back home',
                                  onPressed: () {
                                    ref
                                        .read(authProvider.notifier)
                                        .getAccount();

                                    context.go('/');
                                  },
                                ),
                              )
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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